execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:composter align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run data merge entity @s {height:1.1f,width:1.1f,response:true,Tags:["composter_interaction"]}
execute anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ minecraft:composter align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run data merge entity @s {height:1.1f,width:1.1f,response:true,Tags:["composter_interaction"]}
execute anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:composter align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run data merge entity @s {height:1.1f,width:1.1f,response:true,Tags:["composter_interaction"]}

advancement revoke @s only custcompost:composter/remove_interaction
