scoreboard objectives add potionbundlerng dummy
scoreboard objectives add potionbundlerng2 dummy

scoreboard objectives add ascend_phase dummy
scoreboard objectives add ascend_height_check dummy
scoreboard objectives add ascend_ok_start dummy
scoreboard objectives add ascend_initial_bg_loop dummy
scoreboard objectives add ascend_start_y dummy
scoreboard objectives add ascend_x dummy
scoreboard objectives add ascend_y dummy
scoreboard objectives add ascend_z dummy
scoreboard objectives add ascend_accept_timeout dummy
scoreboard objectives add ascend_prev_gamemode dummy
scoreboard objectives add ascend_anchor_check dummy
scoreboard objectives add ascend_emergency_fix trigger
scoreboard objectives add ascend_tutorial_popup_toggle trigger
scoreboard players set ascend_height_limit rhcconfig 10
scoreboard players set ascend_accept_timeout rhcconfig 600
scoreboard players set 2 math 2

data remove storage nincodedo:potions goodpotions
data remove storage nincodedo:potions badpotions
data remove storage nincodedo:potions healingpotions

data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:swiftness"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_swiftness"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_swiftness"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:night_vision"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_night_vision"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:invisibility"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_invisibility"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:leaping"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_leaping"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_leaping"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:fire_resistance"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_fire_resistance"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:luck"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:slow_falling"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_slow_falling"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:water_breathing"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_water_breathing"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:healing"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_healing"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:regeneration"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_regeneration"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_regeneration"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strength"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_strength"},Count:1b}
data modify storage nincodedo:potions goodpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_strength"},Count:1b}

data modify storage nincodedo:potions healingpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:healing"},Count:1b}
data modify storage nincodedo:potions healingpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_healing"},Count:1b}

data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:slowness"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_slowness"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_slowness"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:turtle_master"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_turtle_master"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_turtle_master"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:turtle_master"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_turtle_master"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_turtle_master"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:harming"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_harming"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:poison"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_poison"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:strong_poison"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:weakness"},Count:1b}
data modify storage nincodedo:potions badpotions insert 0 value {id:"minecraft:splash_potion",tag:{NinUnique:"UnlimitedPotion",Potion:"minecraft:long_weakness"},Count:1b}
