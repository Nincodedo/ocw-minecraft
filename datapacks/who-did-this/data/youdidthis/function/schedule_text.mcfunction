scoreboard players add text_timer rhcdata 1
execute store result score text_timer math run scoreboard players get text_timer rhcdata
scoreboard players operation text_timer math %= text_timer_mod math
execute if score text_timer math matches 0 as @a[predicate=youdidthis:player_just_died] at @s run function youdidthis:random_text
execute as @a[advancements={youdidthis:you_did_this=true}] at @s anchored eyes positioned ^0.675 ^0.125 ^1 run tp @e[tag=youdidthistext,tag=tl_text,distance=..3,sort=nearest,limit=1] ~ ~ ~
execute as @a[advancements={youdidthis:you_did_this=true}] at @s anchored eyes positioned ^-0.675 ^0.25 ^1 run tp @e[tag=youdidthistext,tag=tr_text,distance=..3,sort=nearest,limit=1] ~ ~ ~
execute as @a[advancements={youdidthis:you_did_this=true}] at @s anchored eyes positioned ^0.675 ^-0.4 ^1 run tp @e[tag=youdidthistext,tag=br_text,distance=..3,sort=nearest,limit=1] ~ ~ ~
execute as @a[advancements={youdidthis:you_did_this=true}] at @s anchored eyes positioned ^-0.675 ^-0.25 ^1 run tp @e[tag=youdidthistext,tag=bl_text,distance=..3,sort=nearest,limit=1] ~ ~ ~
scoreboard players add @e[tag=youdidthistext] text_life 1
execute as @e[tag=youdidthistext] if score @s text_life matches 61 run data merge entity @s {text_opacity:0,start_interpolation:-1}
execute as @e[tag=youdidthistext] if score @s text_life >= config_text_life rhcconfig run kill @s
execute if score endserverprog rhcdata matches 1.. run schedule function youdidthis:schedule_text 1t
