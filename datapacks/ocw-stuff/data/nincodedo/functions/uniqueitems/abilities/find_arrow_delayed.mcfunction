execute as @p[nbt={Inventory:[{id:"minecraft:bow",tag:{NinUnique:"TT",NinPowered:1}}]}] at @s run data modify entity @e[type=minecraft:arrow,sort=nearest,limit=1] Tags set value ["torcharrow"]
say hi
execute as @p[nbt={Inventory:[{id:"minecraft:bow",tag:{NinUnique:"TT",NinPowered:1}}]}] at @s unless entity @e[tag=torcharrow,sort=nearest,limit=1] run schedule function nincodedo:uniqueitems/abilities/find_arrow_delayed 1t
execute as @p[nbt={Inventory:[{id:"minecraft:bow",tag:{NinUnique:"TT",NinPowered:1}}]}] at @s if entity @e[tag=torcharrow,sort=nearest,limit=1] run schedule function nincodedo:uniqueitems/abilities/wait_for_arrow 1t
