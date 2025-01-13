scoreboard players operation endserverprog rhcdata -= one math
execute store result bossbar endthegame value run scoreboard players get endserverprog rhcdata
execute if score endserverprog rhcdata >= one math run schedule function youdidthis:count_end_countdown 1s append
