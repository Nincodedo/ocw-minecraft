#!/bin/sh

setup_background_scripts() {
  pgrep -f "/app/previousAttemptRewards.sh"
  background_rewards_check=$?
  if [ $background_rewards_check -ne 0 ]; then
    /app/previousAttemptRewards.sh "$previous_attempt" &
    background_rewards_id=$!
  fi
}

kill_background_scripts() {
  kill "$background_rewards_id"
}

backup_attempt() {
  if [ -n "$dead_player" ]; then
    # save world right before moving stats so they are up to date
    rcon_command "save-all flush"
    attempt_log_dir="logs/backups/attempt$attempt_number"
    mkdir -p "$attempt_log_dir"
    cp -r world/stats/ "$attempt_log_dir"
    cp -r world/advancements/ "$attempt_log_dir"
    tar -czvf "$attempt_log_dir/world_attempt$attempt_number.tar.gz" world/
  fi
}

discord_webhook_send() {
  curl -s -X POST -H "Content-Type: application/json" -d "{\"embeds\":[{\"title\": \"$1\", \"description\": \"$2\", \"color\": \"16711680\", \"thumbnail\": {\"url\": \"$3\"}}]}" "$discord_webhook"
}

world_ready_setup() {
  # this is a reset after a death, make sure the time is set to 0 after we've done all our stuff
  if [ "$death_reset" = "true" ]; then
    rcon_command "time set 0" >/dev/null
  fi
}

world_ending_announcements() {
  dead_player=$(tail -n 50 "$minecraft_server_log" | grep "$grep_phrase" | head -n 1 | awk '{print $4}')
  if [ -n "$dead_player" ]; then
    current_datetime=$(date +"%d-%m-%Y %I:%M:%S %p")
    death_message=$(tail -n 50 "$minecraft_server_log" | grep -B 1 "$grep_phrase" | head -n 1 | cut -f4- -d' ')
    mc_days_survived=$(rcon_command "time query day" | awk '{print $4}')
    mc_time_survived=$(rcon_command "time query gametime" | awk '{print $4}')
    echo "$mc_days_survived" >>"$mc_days_survived_log_name"
    mc_days_highscore=$(sort -n -r "$mc_days_survived_log_name" | head -n 1)
    log "$dead_player died on day $mc_days_survived, restarting server"
    echo "$current_datetime, $dead_player, $mc_days_survived, $death_message" >>"$combined_log_name"
    world_end_text1="$dead_player has died, the server is restarting in $death_reset_delay_seconds seconds"
    world_end_text2="You survived $mc_days_survived in game days"
    world_end_text3="The high score is $mc_days_highscore in game days"
    rcon_command "tellraw @a {\"text\": \"$world_end_text1\"}"
    rcon_command "tellraw @a {\"text\": \"$world_end_text2\"}"
    rcon_command "tellraw @a {\"text\": \"$world_end_text3\"}"
    dead_player_skin=""
    if [ -f "$rhc_player_data_dir/$dead_player.txt" ]; then
      dead_player_id=$(cat "$rhc_player_data_dir/$dead_player.txt")
      dead_player_skin="https://visage.surgeplay.com/bust/512/$dead_player_id?y=-40"
    else
      dead_player_skin="https://mc-heads.net/body/$dead_player/left.png"
    fi
    discord_webhook_send "$dead_player Did This" "$death_message\n$world_end_text1\n$world_end_text2\n$world_end_text3" "$dead_player_skin"
    kill_background_scripts
  fi
}

source /app/common.sh

script_name="LogWatcher"
minecraft_server_dir=/data
app_dir=/app
rhc_player_data_dir=/data/rhc-playerdata
minecraft_compose_dir=$app_dir/ocw-minecraft
minecraft_server_log=$minecraft_server_dir/logs/latest.log
minecraft_docker_container_name=$MC_CONTAINER_NAME
dead_player=""
death_reset=false
discord_webhook_file="/run/secrets/discord_webhook"
discord_webhook=""
grep_phrase="\[Server thread\/INFO\]: [^<].*[^>] has made the advancement \[You did this\]"
death_reset_delay_seconds=20
if [ -f "$discord_webhook_file" ]; then
  discord_webhook=$(cat $discord_webhook_file)
fi
cd $minecraft_server_dir || exit 1
log "Starting LogWatcher in $(pwd) with container $minecraft_docker_container_name"
while :; do
  dead_player=""
  seed_log_name="logs/seed.log"
  mc_days_survived_log_name="logs/mc_days_survived.log"
  combined_log_name="logs/combined.log"
  touch "$combined_log_name"
  mkdir "$rhc_player_data_dir"
  attempt_number=$(wc -l "$combined_log_name" | sort -r | head -n 1 | awk '{print $1}')
  previous_attempt=$attempt_number
  attempt_number=$((++attempt_number))
  log "Starting up for attempt $attempt_number"
  echo "MOTD='$SERVER_NAME - Attempt #$attempt_number'" >$minecraft_compose_dir/motd_override.env
  printf "\n" >>$minecraft_compose_dir/motd_override.env
  echo "CFG_MOTD='$SERVER_NAME - Attempt #$attempt_number'" >>$minecraft_compose_dir/motd_override.env
  chown -R 1000:1000 world/
  log "Checking for healthy container status"
  docker ps -f name="$minecraft_docker_container_name" | grep healthy >/dev/null
  checkHealth=$?
  checkMotd=$(docker inspect "$minecraft_docker_container_name" | jq '.[0].Config.Env[] | select(match(".*Attempt.*"))' | xargs)
  checkMotdLength=${#checkMotd}
  until [ "$checkMotdLength" -ne 0 ] && [ $checkHealth -eq 0 ]; do
    sleep 1
    docker ps -f name="$minecraft_docker_container_name" | grep healthy >/dev/null
    checkHealth=$?
    checkMotd=$(docker inspect "$minecraft_docker_container_name" | jq '.[0].Config.Env[] | select(match(".*Attempt.*"))' | xargs)
    checkMotdLength=${#checkMotd}
    if [ "$checkMotdLength" -eq 0 ] && [ $checkHealth -eq 0 ]; then
      log "Restarting $minecraft_docker_container_name container because bad motd"
      docker compose -f $minecraft_compose_dir/docker-compose.yaml up -d "$minecraft_docker_container_name" >/dev/null
      docker ps -f name="$minecraft_docker_container_name" | grep healthy >/dev/null
      checkHealth=$?
    fi
  done
  log "Container healthy, continuing with startup for attempt #$attempt_number"
  # sleeping to wait for datapack initialization to finish
  sleep 5
  world_ready_setup
  seed=$(rcon_command seed | awk '{print $2}')
  seed=${seed:1:-1}
  log "Minecraft seed: $seed"
  current_datetime=$(date +"%d-%m-%Y %I:%M:%S %p")
  echo "$current_datetime $seed" >>"$seed_log_name"
  high_score=$(sort -n -r "$mc_days_survived_log_name" | head -n 1)
  previous_attempt=$((attempt_number-1))
  rcon_command "scoreboard players set AttemptCount rhcdata $attempt_number" >/dev/null
  rcon_command "scoreboard players set HighScore rhcdata $high_score" >/dev/null
  rcon_command "scoreboard players set PrevAttempt rhcdata $previous_attempt" >/dev/null
  rcon_command "datapack disable 'file/ocw-stuff.zip'" >/dev/null
  rcon_command "datapack enable 'file/ocw-stuff.zip'" >/dev/null
  rcon_command "reload" >/dev/null
  if [ "$death_reset" = "true" ]; then
    discord_webhook_send "Server is up for attempt #$attempt_number" ""
  fi
  death_reset=false
  setup_background_scripts
  log "Found healthy container, tailing docker log"
  (docker logs "$minecraft_docker_container_name" --tail 0 -f &) | grep -q "$grep_phrase"
  log "End of attempt $attempt_number, resetting"
  world_ending_announcements
  backup_attempt
  if [ -n "$dead_player" ]; then
    death_reset=true
    previous_attempt=$attempt_number
    attempt_number=$((++attempt_number))
    echo "MOTD='$SERVER_NAME - Attempt #$attempt_number'" >$minecraft_compose_dir/motd_override.env
    printf "\n" >>$minecraft_compose_dir/motd_override.env
    echo "CFG_MOTD='$SERVER_NAME - Attempt #$attempt_number'" >>$minecraft_compose_dir/motd_override.env
    sleep 20
    rcon_command "kick @a Better luck next time..."
    docker stop "$minecraft_docker_container_name"
    docker rm "$minecraft_docker_container_name"
    rm -rf world
    mkdir world/
    chown -R 1000:1000 world/
    docker compose -f $minecraft_compose_dir/docker-compose.yaml up -d "$minecraft_docker_container_name"
  fi
done
