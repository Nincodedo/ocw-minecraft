execute as @a[tag=holdcompostable] at @s anchored eyes if block ^ ^ ^1 minecraft:composter run scoreboard players set @s lookingatcomposter 1
execute as @a[tag=holdcompostable] at @s anchored eyes if block ^ ^ ^2 minecraft:composter run scoreboard players set @s lookingatcomposter 1
execute as @a[tag=holdcompostable] at @s anchored eyes if block ^ ^ ^3 minecraft:composter run scoreboard players set @s lookingatcomposter 1
execute as @a[tag=holdcompostable] at @s anchored eyes unless block ^ ^ ^1 minecraft:composter unless block ^ ^ ^2 minecraft:composter unless block ^ ^ ^3 minecraft:composter run scoreboard players set @s lookingatcomposter 0
