execute if entity @n[limit=1,type=silverfish,tag=gravemite_lurker,sort=nearest] run tag @n[limit=1,type=silverfish,tag=gravemite_lurker,sort=nearest] add gravemite_lurker_select
execute if entity @n[limit=1,type=silverfish,tag=gravemite_lurker_select,tag=gravemite_lurker_not_burrowed,sort=nearest] run tag @n[limit=1,type=silverfish,tag=gravemite_lurker_not_burrowed,sort=nearest] add gravemite_lurker_about_to_burrow
data merge entity @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] {NoAI:1b}
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run particle minecraft:dust_pillar{block_state:dirt} ~ ~ ~ 1.5 0 1.5 1 50
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run particle minecraft:dust_pillar{block_state:cobblestone} ~ ~ ~ 1.5 0 1.5 1 50
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run particle minecraft:explosion ~ ~1 ~ 0.5 0.8 0.5 0.2 15
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run playsound minecraft:entity.strider.death master @a[distance=..64] ~ ~ ~ 1 0
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run playsound minecraft:entity.wither.break_block master @a[distance=..24] ~ ~ ~ 1 0.75
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run tp @s ~ ~-5 ~
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 air
tag @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] add gravemite_lurker_burrowed
tag @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_burrow,sort=nearest] remove gravemite_lurker_not_burrowed

execute if entity @n[limit=1,type=silverfish,tag=gravemite_lurker_select,tag=gravemite_lurker_burrowed,tag=!gravemite_lurker_about_to_burrow,sort=nearest] run tag @n[limit=1,type=silverfish,tag=gravemite_lurker_burrowed,tag=!gravemite_lurker_about_to_burrow,sort=nearest] add gravemite_lurker_about_to_unburrow
data merge entity @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] {NoAI:0b}
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] at @s run particle minecraft:dust_pillar{block_state:dirt} ~ ~ ~ 1.5 0 1.5 1 50
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] at @s run particle minecraft:dust_pillar{block_state:cobblestone} ~ ~ ~ 1.5 0 1.5 1 50
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] at @s run particle minecraft:explosion ~ ~1 ~ 0.5 0.8 0.5 0.2 15
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] at @s run playsound minecraft:entity.strider.death master @a[distance=..24] ~ ~ ~ 1 0
execute as @n[limit=1,tag=gravemite_lurker_select,tag=gravemite_lurker_about_to_unburrow,sort=nearest] at @s run playsound minecraft:entity.wither.break_block master @a[distance=..24] ~ ~ ~ 1 0.75
tag @n[limit=1,tag=gravemite_lurker_about_to_unburrow,sort=nearest] remove gravemite_lurker_burrowed
tag @n[limit=1,tag=gravemite_lurker_about_to_unburrow,sort=nearest] add gravemite_lurker_not_burrowed

tag @n[limit=1,tag=gravemite_lurker_about_to_burrow,sort=nearest] remove gravemite_lurker_about_to_burrow
tag @n[limit=1,tag=gravemite_lurker_about_to_unburrow,sort=nearest] remove gravemite_lurker_about_to_unburrow

tag @n[limit=1,tag=gravemite_lurker_select] remove gravemite_lurker_select