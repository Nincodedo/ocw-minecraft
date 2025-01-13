scoreboard players set @s composterfillresult 0
execute store result score @s composterfillresult run execute if predicate custcompost:composter/rng/65

execute if score @s hopperslot0 matches 1.. run item modify block ~ ~1 ~ container.0 custcompost:remove_one_item
execute if score @s hopperslot0 matches 0 if score @s hopperslot1 matches 1.. run item modify block ~ ~1 ~ container.1 custcompost:remove_one_item
execute if score @s hopperslot0 matches 0 if score @s hopperslot1 matches 0 if score @s hopperslot2 matches 1.. run item modify block ~ ~1 ~ container.2 custcompost:remove_one_item
execute if score @s hopperslot0 matches 0 if score @s hopperslot1 matches 0 if score @s hopperslot2 matches 0 if score @s hopperslot3 matches 1.. run item modify block ~ ~1 ~ container.3 custcompost:remove_one_item
execute if score @s hopperslot0 matches 0 if score @s hopperslot1 matches 0 if score @s hopperslot2 matches 0 if score @s hopperslot3 matches 0 if score @s hopperslot4 matches 1.. run item modify block ~ ~1 ~ container.4 custcompost:remove_one_item

execute if score @s composterfillresult matches 1.. as @e[tag=custom_composter,sort=nearest,limit=1] at @s run function custcompost:composter/check_composter_level
execute if score @s composterfillresult matches 1.. at @e[tag=custom_composter,sort=nearest,limit=1] run playsound minecraft:block.composter.fill_success block @a

execute if score @s composterfillresult matches 0 at @e[tag=custom_composter,sort=nearest,limit=1] run playsound minecraft:block.composter.fill block @a

execute at @e[tag=custom_composter,sort=nearest,limit=1] run particle minecraft:composter ~ ~0.5 ~ 0.125 0.2 0.125 0.1 10

data modify block ~ ~1 ~ TransferCooldown set value 8
