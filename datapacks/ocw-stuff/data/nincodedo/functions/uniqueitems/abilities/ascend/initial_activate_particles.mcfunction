execute as @e[tag=xSQ] at @s run particle minecraft:dust{color:[0.988,0.961,0.898],scale:1} ~ ~.2 ~ 1 0 0 1 20
execute as @e[tag=ySQ] at @s run particle minecraft:dust{color:[0.988,0.961,0.898],scale:1} ~ ~.2 ~ 0 0 1 1 20

execute as @a[scores={ascend_phase=0}] at @s unless entity @e[tag=ascend_north,distance=..10] run summon minecraft:area_effect_cloud ~ ~ ~-1 {Duration:30,Tags:["xSQ","ascend_north"]}
execute as @a[scores={ascend_phase=0}] at @s unless entity @e[tag=ascend_south,distance=..10] run summon minecraft:area_effect_cloud ~ ~ ~1 {Duration:30,Tags:["xSQ","ascend_south"]}
execute as @a[scores={ascend_phase=0}] at @s unless entity @e[tag=ascend_east,distance=..10] run summon minecraft:area_effect_cloud ~1 ~ ~ {Duration:30,Tags:["ySQ","ascend_east"]}
execute as @a[scores={ascend_phase=0}] at @s unless entity @e[tag=ascend_west,distance=..10] run summon minecraft:area_effect_cloud ~-1 ~ ~ {Duration:30,Tags:["ySQ","ascend_west"]}

execute as @e[tag=ascend_north] at @s run tp ~ ~ ~-0.1
execute as @e[tag=ascend_south] at @s run tp ~ ~ ~0.1
execute as @e[tag=ascend_east] at @s run tp ~0.1 ~ ~
execute as @e[tag=ascend_west] at @s run tp ~-0.1 ~ ~
