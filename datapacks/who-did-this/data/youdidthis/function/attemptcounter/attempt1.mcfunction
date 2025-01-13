tag @s add heartattack
tag @s add heartattack1
title @s times 0 70 20
title @s title [{"text":"Attempt"}]
execute at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2
schedule function youdidthis:attemptcounter/attempt2 20t
