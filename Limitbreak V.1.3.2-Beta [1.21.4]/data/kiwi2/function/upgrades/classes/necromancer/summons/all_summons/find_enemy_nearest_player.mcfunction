tag @e[type=!player,type=!#minecraft:items_and_non_mobs,limit=1,sort=nearest,distance=..48,team=!Player_Glow,tag=!necromancer_summon] add necromancer_target
execute as @e[tag=necromancer_summon] at @s run damage @s 0 drown by @e[tag=necromancer_target,limit=1,sort=nearest]
tag @e[tag=necromancer_target] remove necromancer_target