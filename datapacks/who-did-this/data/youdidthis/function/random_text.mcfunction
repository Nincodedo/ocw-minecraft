execute store result score text_rng rhcdata run random value 1..4
execute if score text_rng_prev rhcdata = text_rng rhcdata run scoreboard players add text_rng rhcdata 1
execute if score text_rng rhcdata matches 5.. run scoreboard players set text_rng rhcdata 1
execute if score text_rng rhcdata matches 1 anchored eyes run summon text_display ^-2 ^ ^ {width:0.5f,billboard:"center",line_width:50,text:'{"text":"how could you","color":"red"}',background:16777215,shadow:1b,Tags:["youdidthistext", "tl_text"],interpolation_duration:20,teleport_duration:1}
execute if score text_rng rhcdata matches 2 anchored eyes run summon text_display ^-2 ^ ^ {width:0.5f,billboard:"center",line_width:50,text:'{"text":"wow","color":"red"}',background:16777215,shadow:1b,Tags:["youdidthistext", "tr_text"],interpolation_duration:20,teleport_duration:1}
execute if score text_rng rhcdata matches 3 anchored eyes run summon text_display ^-2 ^ ^ {width:0.5f,billboard:"center",line_width:50,text:'{"text":"nice one","color":"red"}',background:16777215,shadow:1b,Tags:["youdidthistext", "br_text"],interpolation_duration:20,teleport_duration:1}
execute if score text_rng rhcdata matches 4 anchored eyes run summon text_display ^-2 ^ ^ {width:0.5f,billboard:"center",line_width:50,text:'{"text":"wau","color":"red"}',background:16777215,shadow:1b,Tags:["youdidthistext", "bl_text"],interpolation_duration:0,teleport_duration:1}
execute if score text_rng rhcdata matches 4 run data merge entity @e[tag=bl_text,sort=nearest,limit=1] {transformation:{right_rotation:[0f,0f,-0.25f,1f]},start_interpolation:-1}
execute if score text_rng rhcdata matches 4 run data merge entity @e[tag=bl_text,sort=nearest,limit=1] {interpolation_duration:20}
playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2
execute store result score text_rng_prev rhcdata run scoreboard players get text_rng rhcdata
