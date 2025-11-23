summon wind_charge ^ ^ ^0.1 {Motion:[0.0,-1.0,0.0]}
tag @e[tag=monk_target] remove monk_target
attribute @e[tag=monk_target,limit=1,sort=nearest] safe_fall_distance base reset
tag @s add monk_target
attribute @e[tag=monk_target,limit=1,sort=nearest] safe_fall_distance base set 8
execute as @e[type=!player,type=!#items_and_non_mobs,distance=..3,limit=25] at @s run damage @s 2 player_attack by @p[tag=monk_stillness_on]
