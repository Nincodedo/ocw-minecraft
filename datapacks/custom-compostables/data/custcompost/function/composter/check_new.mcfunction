execute unless entity @e[tag=custom_composter,distance=0..0.5,limit=1] run function custcompost:composter/new
setblock ~ ~ ~ minecraft:composter[level=0] replace
