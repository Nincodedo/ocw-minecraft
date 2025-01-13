scoreboard players set @s hopperslotcount 0
scoreboard players set @s hopperslottotal 0
scoreboard players set @s hopperslot0 0
scoreboard players set @s hopperslot1 0
scoreboard players set @s hopperslot2 0
scoreboard players set @s hopperslot3 0
scoreboard players set @s hopperslot4 0
scoreboard players set @s hopperslot0other 0
scoreboard players set @s hopperslot1other 0
scoreboard players set @s hopperslot2other 0
scoreboard players set @s hopperslot3other 0
scoreboard players set @s hopperslot4other 0

execute store result score @s hopperslot0 run data get block ~ ~1 ~ Items[{Slot:0b,id:"minecraft:poisonous_potato"}].count
execute store result score @s hopperslot1 run data get block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:poisonous_potato"}].count
execute store result score @s hopperslot2 run data get block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:poisonous_potato"}].count
execute store result score @s hopperslot3 run data get block ~ ~1 ~ Items[{Slot:3b,id:"minecraft:poisonous_potato"}].count
execute store result score @s hopperslot4 run data get block ~ ~1 ~ Items[{Slot:4b,id:"minecraft:poisonous_potato"}].count

execute store result score @s hopperslot0other run data get block ~ ~1 ~ Items[{Slot:0b}].count
execute store result score @s hopperslot1other run data get block ~ ~1 ~ Items[{Slot:1b}].count
execute store result score @s hopperslot2other run data get block ~ ~1 ~ Items[{Slot:2b}].count
execute store result score @s hopperslot3other run data get block ~ ~1 ~ Items[{Slot:3b}].count
execute store result score @s hopperslot4other run data get block ~ ~1 ~ Items[{Slot:4b}].count

scoreboard players operation @s hopperslot0other -= @s hopperslot0
scoreboard players operation @s hopperslot1other -= @s hopperslot1
scoreboard players operation @s hopperslot2other -= @s hopperslot2
scoreboard players operation @s hopperslot3other -= @s hopperslot3
scoreboard players operation @s hopperslot4other -= @s hopperslot4

scoreboard players operation @s hopperslotcount += @s hopperslot0other
scoreboard players operation @s hopperslotcount += @s hopperslot1other
scoreboard players operation @s hopperslotcount += @s hopperslot2other
scoreboard players operation @s hopperslotcount += @s hopperslot3other
scoreboard players operation @s hopperslotcount += @s hopperslot4other

scoreboard players operation @s hopperslottotal += @s hopperslot0
scoreboard players operation @s hopperslottotal += @s hopperslot1
scoreboard players operation @s hopperslottotal += @s hopperslot2
scoreboard players operation @s hopperslottotal += @s hopperslot3
scoreboard players operation @s hopperslottotal += @s hopperslot4

execute if score @s hopperslotcount matches 0 if score @s hopperslottotal matches 1.. run function custcompost:composter/hopper/run
