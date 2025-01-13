scoreboard objectives add ping_lifetime dummy
scoreboard objectives add ping_color dummy
scoreboard objectives add raycast_steps dummy
scoreboard objectives add ping trigger
scoreboard objectives add ping_config trigger

scoreboard players set config_ping_ping_lifetime rhcconfig 140
scoreboard players set max_raycast_steps rhcconfig 120

data remove storage nincodedo:storage colors

data modify storage nincodedo:storage colors append value {}
data modify storage nincodedo:storage colors append value {"name": "White", "block": "minecraft:white_stained_glass", "glow_color": 16777215}
data modify storage nincodedo:storage colors append value {"name": "Light Gray", "block": "minecraft:light_gray_stained_glass", "glow_color": 13882323}
data modify storage nincodedo:storage colors append value {"name": "Gray", "block": "minecraft:gray_stained_glass", "glow_color": 8421504}
data modify storage nincodedo:storage colors append value {"name": "Black", "block": "minecraft:black_stained_glass", "glow_color": 1315860}
data modify storage nincodedo:storage colors append value {"name": "Brown", "block": "minecraft:brown_stained_glass", "glow_color": 9127187}
data modify storage nincodedo:storage colors append value {"name": "Red", "block": "minecraft:red_stained_glass", "glow_color": 16711680}
data modify storage nincodedo:storage colors append value {"name": "Orange", "block": "minecraft:orange_stained_glass", "glow_color": 16753920}
data modify storage nincodedo:storage colors append value {"name": "Yellow", "block": "minecraft:yellow_stained_glass", "glow_color": 16776960}
data modify storage nincodedo:storage colors append value {"name": "Lime", "block": "minecraft:lime_stained_glass", "glow_color": 12582656}
data modify storage nincodedo:storage colors append value {"name": "Green", "block": "minecraft:green_stained_glass", "glow_color": 65280}
data modify storage nincodedo:storage colors append value {"name": "Cyan", "block": "minecraft:cyan_stained_glass", "glow_color": 65535}
data modify storage nincodedo:storage colors append value {"name": "Light Blue", "block": "minecraft:light_blue_stained_glass", "glow_color": 11393254}
data modify storage nincodedo:storage colors append value {"name": "Blue", "block": "minecraft:blue_stained_glass", "glow_color": 255}
data modify storage nincodedo:storage colors append value {"name": "Purple", "block": "minecraft:purple_stained_glass", "glow_color": 8388736}
data modify storage nincodedo:storage colors append value {"name": "Magenta", "block": "minecraft:magenta_stained_glass", "glow_color": 16711935}
data modify storage nincodedo:storage colors append value {"name": "Pink", "block": "minecraft:pink_stained_glass", "glow_color": 16761035}
