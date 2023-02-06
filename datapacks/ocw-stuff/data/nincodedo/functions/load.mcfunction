scoreboard objectives add sleepAdvCheck dummy
scoreboard objectives add current_day dummy
scoreboard objectives add player_count dummy
scoreboard objectives add mastersword dummy
scoreboard objectives add used_ms minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add goggles dummy
scoreboard objectives add advrewards dummy
scoreboard objectives add bannerplz trigger
scoreboard players enable @a bannerplz
scoreboard objectives add stripminenerf dummy
scoreboard players set nin.config stripminenerf 0
execute unless score global mastersword matches 1..1 run scoreboard players set global mastersword 0
execute unless score global goggles matches 1..1 run scoreboard players set global goggles 0
execute store result score global current_day run time query day
function nincodedo:runsleepchecks
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 10t
schedule function nincodedo:slowtick 5s
execute if score nin.config stripminenerf matches 1 run schedule function nincodedo:strip_mining_nerf 5s
gamerule maxEntityCramming 8
gamerule playersSleepingPercentage 60
