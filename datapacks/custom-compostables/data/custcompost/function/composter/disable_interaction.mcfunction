tag @s add composter_interaction_disabled
data merge entity @e[tag=composter_interaction,sort=nearest,limit=1] {height: 0.5f, width: 0.5f}
schedule function custcompost:composter/schedule_composter_enable_interaction 1s replace
