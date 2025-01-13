title @a title {"text":"you did this", "color": "blue"}
execute positioned as @e[distance=..50] run summon firework_rocket ~ ~10 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;2437522],fade_colors:[I;15790320]}]}}}}
bossbar add endthegame {"text": "The End Is Here"}
bossbar set endthegame color blue
bossbar set endthegame max 60
bossbar set endthegame value 60
bossbar set endthegame players @a
scoreboard players set one math 1
scoreboard players set endserverprog rhcdata 60
schedule function youdidthis:count_end_countdown 1s
