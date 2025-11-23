damage @s 0.8 kiwi:crescent_slash_sweep
execute at @s run particle sweep_attack ~ ~1 ~ 0.2 0.5 0.2 1 2
execute at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.5 2
execute if score @s skill_thousand_cuts matches 2.. as @p[tag=thousand_cuts_intitator,sort=nearest,limit=1] at @s run tp @e[tag=thousand_cuts_target,limit=1,sort=nearest] ^ ^0.4 ^3 facing entity @s feet
scoreboard players remove @s skill_thousand_cuts 1
execute if score @s skill_thousand_cuts matches 1 run damage @s 15 kiwi:crescent_slash_sweep by @p[tag=thousand_cuts_intitator]
execute if score @s skill_thousand_cuts matches 1 at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0.1 5
execute if score @s skill_thousand_cuts matches 1 at @s run particle minecraft:flame ~ ~1 ~ 0.25 0.5 0.25 0.5 50
execute if score @s skill_thousand_cuts matches 1 at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.25 0.5 0.25 8 1
execute if score @s skill_thousand_cuts matches 1 as @p[tag=thousand_cuts_intitator,limit=1] at @s run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..10] ~ ~ ~ 1 2
execute if score @s skill_thousand_cuts matches 1 at @s run summon armor_stand ^ ^ ^2 {NoGravity:1b,Silent:1b,DeathTime:20,Invisible:1b,Health:0f,attributes:[{id:"minecraft:max_health",base:0}],active_effects:[{id:"minecraft:wind_charged",amplifier:1,duration:20,show_particles:0b}]}
execute if score @s skill_thousand_cuts matches 1 at @s unless block ~ ~1 ~ #air run spreadplayers ~ ~ 0 1 false @s
execute if score @s skill_thousand_cuts matches 1 run tag @p[tag=thousand_cuts_intitator] remove thousand_cuts_intitator
execute if score @s skill_thousand_cuts matches 1 run tag @s remove thousand_cuts_target