playsound entity.fox.bite hostile @a[distance=..32] ~ ~ ~ 1 0
playsound entity.fox.aggro hostile @a[distance=..32] ~ ~ ~ 1 0
playsound entity.generic.eat hostile @a[distance=..32] ~ ~ ~ 1 0
particle item{item:"rotten_flesh"} ^ ^0.5 ^1 0.2 0.4 0.2 0.2 20
particle item{item:"slime_ball"} ^ ^0.5 ^1 0.2 0.4 0.2 0.2 10
particle item{item:"bone"} ^ ^0.5 ^1 0.2 0.4 0.2 0.2 20

execute as @e[tag=necromancer_summon,distance=..12] at @s run particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 4
execute as @e[tag=necromancer_summon,distance=..12] at @s store result score @s necromancer_summon_health run data get entity @s Health
execute as @e[tag=necromancer_summon,distance=..12] at @s run scoreboard players operation @s necromancer_summon_health += world necromancer_summon_health_gnawer_add
execute as @e[tag=necromancer_summon,distance=..12] store result entity @s Health float 1 run scoreboard players get @s necromancer_summon_health
scoreboard players reset * necromancer_summon_health