tellraw @a[tag=debug_logging] {"text": "[Debug] Iridium Rod Powered Start"}
execute if entity @s[nbt={Inventory:[{components:{"minecraft:enchantments":{levels:{}},"minecraft:custom_data":{"nincodedo:unique_item":"NR"}}}]}] run data remove storage nincodedo:storage iridium_rod
execute if entity @s[nbt={Inventory:[{components:{"minecraft:enchantments":{levels:{}},"minecraft:custom_data":{"nincodedo:unique_item":"NR"}}}]}] run data modify storage nincodedo:storage iridium_rod set from entity @s Inventory[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR"}}}]

execute if entity @s[predicate=nincodedo:isentitynincodedo,nbt={Inventory:[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR","nincodedo:powered":0b}}}]}] run tellraw @a[tag=debug_logging] {"text": "[Debug] Powering up Iridium Rod for Nin"}
execute as @s[predicate=nincodedo:isentitynincodedo,nbt={Inventory:[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR","nincodedo:powered":0b}}}]}] run function nincodedo:uniqueitems/abilities/iridiumrod/power_up

execute if entity @s[predicate=!nincodedo:isentitynincodedo,nbt={Inventory:[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR","nincodedo:powered":1b}}}]}] run tellraw @a[tag=debug_logging] {"text": "[Debug] Powering down Iridium Rod"}
execute as @s[predicate=!nincodedo:isentitynincodedo,nbt={Inventory:[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR","nincodedo:powered":1b}}}]}] run function nincodedo:uniqueitems/abilities/iridiumrod/power_down

execute if score config_debug rhcconfig matches 1 as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR","nincodedo:powered":0b}}}]}] run tellraw @a[tag=debug_logging] {"text": "[Debug] Powering up Iridium Rod for debugging"}
execute if score config_debug rhcconfig matches 1 as @s[nbt={Inventory:[{components:{"minecraft:custom_data":{"nincodedo:unique_item":"NR","nincodedo:powered":0b}}}]}] run function nincodedo:uniqueitems/abilities/iridiumrod/power_up

advancement revoke @s only nincodedo:unique_items/iridium_rod/any
