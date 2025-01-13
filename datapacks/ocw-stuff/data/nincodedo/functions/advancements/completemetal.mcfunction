playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Metal_Link's gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/metal_gifts/root
give @s minecraft:player_head[minecraft:profile={name:"Metal_Link"}]
scoreboard players add @s ocwplayergiftcount 1
