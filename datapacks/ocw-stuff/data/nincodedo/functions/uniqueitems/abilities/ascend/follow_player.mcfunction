execute store result score @s ascend_start_y run data get entity @s Pos[1]
execute store result score @p[tag=ascending] ascend_start_y run data get entity @p[tag=ascending] Pos[1]
scoreboard players operation @s ascend_start_y -= @p[tag=ascending] ascend_start_y
execute if entity @s[tag=ascend_good] if score @s ascend_start_y > ascend_height_limit rhcconfig run function nincodedo:uniqueitems/abilities/ascend/change_to_bad_location
execute if entity @s[tag=ascend_bad] if score @s ascend_start_y <= ascend_height_limit rhcconfig run function nincodedo:uniqueitems/abilities/ascend/change_to_good_location
execute if entity @e[tag=ascend_good] run scoreboard players set @p[tag=ascending] ascend_ok_start 1
execute if entity @e[tag=ascend_bad] run scoreboard players set @p[tag=ascending] ascend_ok_start 0
data modify entity @s Pos[0] set from entity @p[tag=ascending] Pos[0]
data modify entity @s Pos[2] set from entity @p[tag=ascending] Pos[2]
execute at @s run tp ~-0.5 ~ ~-0.5
execute at @s if block ~ ~ ~ air if block ~ ~1 ~ air run tp ~ ~1 ~
execute at @s unless block ~ ~ ~ air run tp ~ ~-1 ~
execute as @e[tag=ascend] unless entity @p[tag=ascending] run kill @s
execute if entity @p[tag=ascending] run schedule function nincodedo:uniqueitems/abilities/ascend/schedule_follow_player 1t
