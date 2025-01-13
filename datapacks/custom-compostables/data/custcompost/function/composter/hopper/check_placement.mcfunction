execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:hopper[facing=down] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:composter as @e[tag=custom_composter,sort=nearest,distance=..1,limit=1] run function custcompost:composter/hopper/update_marker
execute anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ minecraft:hopper[facing=down] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:composter as @e[tag=custom_composter,sort=nearest,distance=..1,limit=1] run function custcompost:composter/hopper/update_marker
execute anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:hopper[facing=down] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:composter as @e[tag=custom_composter,sort=nearest,distance=..1,limit=1] run function custcompost:composter/hopper/update_marker

advancement revoke @s only custcompost:composter/hopper/check_placement
