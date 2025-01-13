execute store result storage nincodedo:storage boatcompass.x int 1 run data get entity @s Pos[0]
execute store result storage nincodedo:storage boatcompass.y int 1 run data get entity @s Pos[1]
execute store result storage nincodedo:storage boatcompass.z int 1 run data get entity @s Pos[2]

execute if dimension minecraft:overworld run data modify storage nincodedo:storage boatcompass.dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage nincodedo:storage boatcompass.dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage nincodedo:storage boatcompass.dimension set value "minecraft:the_end"

execute if items entity @s hotbar.0 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value "hotbar.0"
execute if items entity @s hotbar.1 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.1"
execute if items entity @s hotbar.2 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.2"
execute if items entity @s hotbar.3 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.3"
execute if items entity @s hotbar.4 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.4"
execute if items entity @s hotbar.5 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.5"
execute if items entity @s hotbar.6 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.6"
execute if items entity @s hotbar.7 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.7"
execute if items entity @s hotbar.8 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "hotbar.8"
execute if items entity @s inventory.0 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.0"
execute if items entity @s inventory.1 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.1"
execute if items entity @s inventory.2 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.2"
execute if items entity @s inventory.3 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.3"
execute if items entity @s inventory.4 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.4"
execute if items entity @s inventory.5 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.5"
execute if items entity @s inventory.6 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.6"
execute if items entity @s inventory.7 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.7"
execute if items entity @s inventory.8 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.8"
execute if items entity @s inventory.9 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.9"
execute if items entity @s inventory.10 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.10"
execute if items entity @s inventory.11 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.11"
execute if items entity @s inventory.12 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.12"
execute if items entity @s inventory.13 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.13"
execute if items entity @s inventory.14 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.14"
execute if items entity @s inventory.15 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.15"
execute if items entity @s inventory.16 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.16"
execute if items entity @s inventory.17 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.17"
execute if items entity @s inventory.18 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.18"
execute if items entity @s inventory.19 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.19"
execute if items entity @s inventory.20 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.20"
execute if items entity @s inventory.21 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.21"
execute if items entity @s inventory.22 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.22"
execute if items entity @s inventory.23 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.23"
execute if items entity @s inventory.24 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.24"
execute if items entity @s inventory.25 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.25"
execute if items entity @s inventory.26 minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "inventory.26"
execute if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data~{NinUnique:"BoatCompass"}] run data modify storage nincodedo:storage boatcompass.slot set value  "weapon.offhand"

function nincodedo:items/boatcompass/set_pos with storage nincodedo:storage boatcompass

advancement revoke @s only nincodedo:items/get_out_of_boat
playsound minecraft:item.lodestone_compass.lock block @s
scoreboard players set @s inboat 2
