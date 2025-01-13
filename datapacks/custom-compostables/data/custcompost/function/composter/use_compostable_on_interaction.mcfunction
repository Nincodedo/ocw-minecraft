scoreboard players set @s composterfillresult 0
execute store result score @s composterfillresult run execute if predicate custcompost:composter/rng/held_compostable_65

execute if score @s composterfillresult matches 1.. at @e[tag=composter_interaction,sort=nearest,limit=1] as @e[tag=custom_composter,sort=nearest,limit=1] at @s run function custcompost:composter/check_composter_level
execute if score @s composterfillresult matches 1.. at @e[tag=custom_composter,sort=nearest,limit=1] run playsound minecraft:block.composter.fill_success block @a

execute if score @s composterfillresult matches 0 at @e[tag=custom_composter,sort=nearest,limit=1] run playsound minecraft:block.composter.fill block @a

execute at @e[tag=composter_interaction,sort=nearest,limit=1] run particle minecraft:composter ~ ~0.5 ~ 0.125 0.2 0.125 0.1 10

item modify entity @s[gamemode=!creative] weapon.mainhand custcompost:remove_one_item

advancement revoke @s only custcompost:composter/use_compostable_on_interaction
