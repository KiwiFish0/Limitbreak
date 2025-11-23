playsound entity.fox.bite hostile @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.ravager.attack hostile @a[distance=..16] ~ ~ ~ 1 2
execute at @s run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 0.5 0.6 0.5 1 25
particle dust{color:[0.8,0.1,0.1],scale:1} ~ ~1 ~ 0.6 0.8 0.6 0.2 25
particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 2

execute store result score @s necromancer_summon_health run data get entity @s Health
execute run scoreboard players operation @s[tag=!revenant] necromancer_summon_health += world necromancer_summon_health_ghoul_lifesteal
execute run scoreboard players operation @s[tag=revenant] necromancer_summon_health += world necromancer_summon_health_revenant_lifesteal
execute store result entity @s Health float 1 run scoreboard players get @s necromancer_summon_health
scoreboard players reset * necromancer_summon_health