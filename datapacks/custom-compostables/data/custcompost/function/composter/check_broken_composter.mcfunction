execute as @e[tag=custom_composter] at @s unless block ~ ~ ~ minecraft:composter run kill @s

execute if entity @e[tag=custom_composter] run schedule function custcompost:composter/check_broken_composter 2.5s
