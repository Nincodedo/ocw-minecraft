scoreboard players set @a[scores={ascend_initial_bg_loop=..0}] ascend_initial_bg_loop 60
execute as @a[tag=ascending] at @s if score @s ascend_initial_bg_loop matches 60 run playsound nincodedo:item.ascend.initial_activate_bg_loop player @s ~ ~ ~ 1 1 1
scoreboard players remove @a[tag=ascending] ascend_initial_bg_loop 1
execute as @a[tag=ascending,scores={ascend_initial_bg_loop=..1}] at @s unless entity @e[tag=ascend,distance=..12,sort=nearest,limit=1] run function nincodedo:uniqueitems/abilities/ascend/find_ceiling
execute if entity @a[tag=ascending] run schedule function nincodedo:uniqueitems/abilities/ascend/initial_activate_loop_bg 1t
