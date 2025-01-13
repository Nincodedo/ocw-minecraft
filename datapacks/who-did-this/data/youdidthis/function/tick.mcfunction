execute if entity @a[tag=!newplayer] run schedule function youdidthis:attemptcounter/playerjoin 10s append
execute as @a[tag=!newplayer] run tag @s add newplayer
