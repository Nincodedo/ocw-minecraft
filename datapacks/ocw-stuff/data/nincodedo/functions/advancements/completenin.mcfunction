playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Nincodedo's gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/nin_gifts/root
give @s minecraft:player_head[minecraft:profile={name:"Nincodedo"}]
scoreboard players add @s ocwplayergiftcount 1
