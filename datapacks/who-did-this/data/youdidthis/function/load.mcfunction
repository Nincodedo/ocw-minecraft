scoreboard objectives add highscore dummy {"text":"Most Days Survived"}
scoreboard objectives add rhcdata dummy
scoreboard objectives add rhcconfig dummy
scoreboard objectives add math dummy
scoreboard objectives add text_life dummy
scoreboard objectives add health health
scoreboard objectives setdisplay list health
scoreboard objectives modify health rendertype hearts

scoreboard players set config_text_life rhcconfig 80
scoreboard players set text_timer rhcdata 0
scoreboard players set text_timer_mod math 120
scoreboard players set text_rng_prev rhcdata 0

schedule function youdidthis:1sec 1s
