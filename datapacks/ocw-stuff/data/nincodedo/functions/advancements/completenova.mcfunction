playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Nova_Stardust's gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/nova_gifts/root
give @s minecraft:player_head[minecraft:profile={name:"Nova_Stardust"}]
scoreboard players add @s ocwplayergiftcount 1
