scoreboard objectives add inventory dummy
execute store result score @s inventory run clear @s #nincodedo:next_attempt_rewards[minecraft:custom_data={NinReward:1}] 0

tellraw @s[scores={inventory=1}] [{"text":"You got 1 reward from the ","italic":true},{"text":"previous world's advancements","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"advrewards"}}]}},{"text":"! Nice!"},{"score":{"name":"@s","objective":"ad"}}]
tellraw @s[scores={inventory=2..}] [{"text":"You got ","italic":true},{"score":{"name":"@s","objective":"inventory"},"italic":true},{"text":" rewards from the ","italic":true},{"text":"previous world's advancements","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"@s","objective":"advrewards"}}]}},{"text":"! Nice!"},{"score":{"name":"@s","objective":"ad"}}]
