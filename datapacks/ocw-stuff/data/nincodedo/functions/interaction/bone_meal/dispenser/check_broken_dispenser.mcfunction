execute as @e[tag=bone_meal_dispenser] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute as @e[tag=bone_meal_dispenser,tag=face_north] at @s unless block ~ ~ ~ minecraft:dispenser[facing=north] run function nincodedo:interaction/bone_meal/dispenser/fix_tag
execute as @e[tag=bone_meal_dispenser,tag=face_south] at @s unless block ~ ~ ~ minecraft:dispenser[facing=south] run function nincodedo:interaction/bone_meal/dispenser/fix_tag
execute as @e[tag=bone_meal_dispenser,tag=face_east] at @s unless block ~ ~ ~ minecraft:dispenser[facing=east] run function nincodedo:interaction/bone_meal/dispenser/fix_tag
execute as @e[tag=bone_meal_dispenser,tag=face_west] at @s unless block ~ ~ ~ minecraft:dispenser[facing=west] run function nincodedo:interaction/bone_meal/dispenser/fix_tag

execute if entity @e[tag=bone_meal_dispenser] run schedule function nincodedo:interaction/bone_meal/dispenser/check_broken_dispenser 2.5s
