tag @s remove heartattack2
tag @s add heartattack3
title @s times 0 70 20
title @s title [{"text":"Attempt #"},{"score":{"name":"AttemptCount","objective":"rhcdata"}, "color": "red"}]
execute at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2
schedule function youdidthis:attemptcounter/attempt4 30t
