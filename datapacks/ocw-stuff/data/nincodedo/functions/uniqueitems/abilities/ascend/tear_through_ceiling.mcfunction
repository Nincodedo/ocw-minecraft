gamemode spectator
ride @s mount @e[tag=ascend_anchor,sort=nearest,distance=..1,limit=1]
execute on vehicle run tp ~ ~2 ~
execute unless block ~ ~1 ~ #minecraft:replaceable unless block ~ ~2 ~ #minecraft:replaceable run tell @a[tag=debug_logging] tp ~ ~2 ~
execute unless block ~ ~1 ~ #minecraft:replaceable if block ~ ~2 ~ #minecraft:replaceable run tell @a[tag=debug_logging] tp ~ ~1 ~
execute unless block ~ ~1 ~ #minecraft:replaceable unless block ~ ~2 ~ #minecraft:replaceable on vehicle run tp ~ ~2 ~
execute unless block ~ ~1 ~ #minecraft:replaceable if block ~ ~2 ~ #minecraft:replaceable on vehicle run tp ~ ~1 ~
playsound nincodedo:item.ascend.hit_ceiling_going_in player @a ~ ~2 ~ 1 1
effect give @s minecraft:blindness infinite 0 true
scoreboard players set @s ascend_phase 2
schedule function nincodedo:uniqueitems/abilities/ascend/move_through_ceiling 1s
