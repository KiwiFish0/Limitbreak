tp @s ^ ^ ^4
tag @s add magus_blink_done
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
particle minecraft:flash ~ ~1 ~ 0 0 0 0.01 1
execute as @s at @s unless block ~ ~ ~ #magus_blink_phase run tp @s ~ ~0.5 ~
execute as @s at @s unless block ~ ~1 ~ #magus_blink_phase run tp @s ~ ~1 ~