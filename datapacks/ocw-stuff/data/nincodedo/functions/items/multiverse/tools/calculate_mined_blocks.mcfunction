scoreboard players set @s mined_total 0
scoreboard players operation @s mined_total += @s mined_stone
scoreboard players operation @s mined_total += @s mined_coal
scoreboard players operation @s mined_total += @s mined_iron
scoreboard players operation @s mined_total += @s mined_granite
scoreboard players operation @s mined_total += @s mined_diorite
scoreboard players operation @s mined_total += @s mined_andesite
scoreboard players operation @s mined_total += @s mined_tuff
scoreboard players operation @s mined_total += @s mined_deepslate
scoreboard players operation @s mined_total += @s mined_copper
scoreboard players operation @s mined_total += @s mined_gold
scoreboard players operation @s mined_total += @s mined_diamond
scoreboard players operation @s mined_total += @s mined_redstone
scoreboard players operation @s mined_total += @s mined_lapis
scoreboard players operation @s mined_total += @s mined_emerald

execute store result score @s[tag=holdingcobaltpickaxe] cobalt_momentum run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:efficiency"
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches ..4 if score @s mined_total matches 3.. run item modify entity @s weapon.mainhand nincodedo:multiverse/tools/increase_efficiency_by_one
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches 1 if score @s cobalt_momentum_prev < @s cobalt_momentum at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.1
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches 2 if score @s cobalt_momentum_prev < @s cobalt_momentum at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.2
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches 3 if score @s cobalt_momentum_prev < @s cobalt_momentum at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.3
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches 4 if score @s cobalt_momentum_prev < @s cobalt_momentum at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.4
scoreboard players add @s[tag=holdingcobaltpickaxe,scores={cobalt_momentum=5..}] cobalt_momentum_max 1
item modify entity @s[tag=holdingcobaltpickaxe,scores={cobalt_momentum_max=8..}] weapon.mainhand nincodedo:multiverse/tools/reset_efficiency
execute at @s[tag=holdingcobaltpickaxe,scores={cobalt_momentum_max=8..}] run playsound nincodedo:item.cobalt_pickaxe.cooldown player @s ^-1 ^ ^ 0.4 1
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches 1.. if score @s mined_total matches ..2 run item modify entity @s weapon.mainhand nincodedo:multiverse/tools/reset_efficiency
execute store result score @s[tag=holdingcobaltpickaxe] cobalt_momentum_prev run scoreboard players get @s cobalt_momentum
scoreboard players reset @s[scores={cobalt_momentum_max=8..}] cobalt_momentum
scoreboard players reset @s[scores={cobalt_momentum_max=8..}] cobalt_momentum_max
scoreboard players reset @s[tag=!holdingcobaltpickaxe] cobalt_momentum
scoreboard players reset @s[tag=!holdingcobaltpickaxe] cobalt_momentum_max

scoreboard players reset @s mined_stone
scoreboard players reset @s mined_coal
scoreboard players reset @s mined_iron
scoreboard players reset @s mined_granite
scoreboard players reset @s mined_diorite
scoreboard players reset @s mined_andesite
scoreboard players reset @s mined_tuff
scoreboard players reset @s mined_deepslate
scoreboard players reset @s mined_copper
scoreboard players reset @s mined_gold
scoreboard players reset @s mined_diamond
scoreboard players reset @s mined_redstone
scoreboard players reset @s mined_lapis
scoreboard players reset @s mined_emerald
