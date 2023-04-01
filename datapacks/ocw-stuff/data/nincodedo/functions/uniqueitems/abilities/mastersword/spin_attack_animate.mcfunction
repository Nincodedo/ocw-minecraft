scoreboard players add @e[tag=spin_attack] spin_attack_life 1

execute at @p[tag=spin_attacker] as @e[tag=spin_attack_rotate,sort=nearest,limit=1] at @s positioned ^ ^ ^1 run tp @e[tag=spin_attack_sword,sort=nearest,limit=1] ~ ~ ~
execute at @p[tag=spin_attacker] run tp @e[tag=spin_attack_rotate,sort=nearest,limit=1] ~ ~0.5 ~
execute at @p[tag=spin_attacker] as @e[tag=spin_attack_rotate,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~20 ~
execute at @p[tag=spin_attacker] run data modify entity @e[tag=spin_attack_sword,sort=nearest,limit=1] Rotation[0] set from entity @e[tag=spin_attack_rotate,sort=nearest,limit=1] Rotation[0]
execute at @e[tag=spin_attack_sword] run function nincodedo:uniqueitems/abilities/mastersword/spin_attack_particles
execute at @p[tag=spin_attacker] as @e[distance=1..3,tag=!spin_attack] run damage @s 3.5 nincodedo:sword_spin_attack by @e[tag=spin_attack_sword,sort=nearest,limit=1] from @p[tag=spin_attacker]

execute as @e[tag=spin_attack] if score @s spin_attack_life > config_ms_spinatklife rhcdata run kill @s
execute if entity @e[tag=spin_attack] run schedule function nincodedo:uniqueitems/abilities/mastersword/spin_attack_animate 1t
execute unless entity @e[tag=spin_attack] run tag @p[tag=spin_attacker] remove spin_attacker
