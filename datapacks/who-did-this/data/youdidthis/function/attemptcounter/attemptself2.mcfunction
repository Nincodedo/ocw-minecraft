tag @s remove heartattack1
tag @s add heartattack2
title @s times 0 70 20
title @s title [{"text":"Attempt #"}]
execute at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2
schedule function youdidthis:attemptcounter/attempt3 20t
