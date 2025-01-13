scoreboard players set one math 1
scoreboard players operation @s composterlevel += one math
execute if score @s composterlevel matches 1 run setblock ~ ~ ~ minecraft:composter[level=1] replace
execute if score @s composterlevel matches 2 run setblock ~ ~ ~ minecraft:composter[level=2] replace
execute if score @s composterlevel matches 3 run setblock ~ ~ ~ minecraft:composter[level=3] replace
execute if score @s composterlevel matches 4 run setblock ~ ~ ~ minecraft:composter[level=4] replace
execute if score @s composterlevel matches 5 run setblock ~ ~ ~ minecraft:composter[level=5] replace
execute if score @s composterlevel matches 6 run setblock ~ ~ ~ minecraft:composter[level=6] replace
execute if score @s composterlevel matches 7 run setblock ~ ~ ~ minecraft:composter[level=7] replace
execute if score @s composterlevel matches 7 run function custcompost:composter/disable_interaction
