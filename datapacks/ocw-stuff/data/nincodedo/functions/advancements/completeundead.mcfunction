playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Undead_Zeratul's gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/undead_gifts/root
give @s minecraft:player_head[minecraft:profile={name:"Undead_Zeratul"}]
scoreboard players add @s ocwplayergiftcount 1
