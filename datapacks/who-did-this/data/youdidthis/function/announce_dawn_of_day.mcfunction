execute store result score tens rhcdata run scoreboard players get CurrentAttempt rhcdata
execute store result score hundreds rhcdata run scoreboard players get CurrentAttempt rhcdata
scoreboard players set 10 math 10
scoreboard players set 100 math 100
scoreboard players operation tens rhcdata %= 10 math
scoreboard players operation hundreds rhcdata %= 100 math

data remove storage youdidthis:storage day_suffix
execute if score tens rhcdata matches 1 unless score hundreds rhcdata matches 11 run data modify storage youdidthis:storage day_suffix set value "st"
execute if score tens rhcdata matches 2 unless score hundreds rhcdata matches 12 run data modify storage youdidthis:storage day_suffix set value "nd"
execute if score tens rhcdata matches 3 unless score hundreds rhcdata matches 13 run data modify storage youdidthis:storage day_suffix set value "rd"
execute unless data storage youdidthis:storage day_suffix run data modify storage youdidthis:storage day_suffix set value "th"

title @s times 0 70 20
title @s title [{"text":"Dawn Of The "},{"score":{"name":"CurrentAttempt","objective":"rhcdata"}},{"nbt":"day_suffix","storage":"youdidthis:storage"},{"text":" Day"}]
execute if score CurrentAttempt rhcdata > HighScore rhcdata run title @s subtitle {"text":"New High Score!"}
execute at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2

tag @s add highscoreseen
