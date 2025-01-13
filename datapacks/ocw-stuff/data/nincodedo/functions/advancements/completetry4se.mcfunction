playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Try4se's gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/try4se_gifts/root
give @s minecraft:player_head[minecraft:profile={name:"Try4se"}]
scoreboard players add @s ocwplayergiftcount 1
