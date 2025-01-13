bossbar add endserver {"text": "The End Is Near"}
bossbar set endserver color red
bossbar set endserver max 20
bossbar set endserver value 20
bossbar set endserver players @a
scoreboard players set one math 1
scoreboard players set endserverprog rhcdata 20
schedule function youdidthis:count_countdown 1s
