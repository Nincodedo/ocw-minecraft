playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Tunasz_'s gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/tunasz_gifts/root
give @s minecraft:player_head[minecraft:profile={name:"Tunasz_"}]
scoreboard players add @s ocwplayergiftcount 1
