tag @e[type=!player,type=!#items_and_non_mobs,tag=!necromancer_summon_check,tag=!necromancer_summon,team=!Player_Glow,limit=1,sort=nearest] add summon_nearest_enemy
damage @s 0 drown by @e[tag=summon_nearest_enemy,limit=1,sort=nearest] from @e[tag=summon_nearest_enemy,limit=1,sort=nearest]
tag @e[tag=summon_nearest_enemy,limit=1,sort=nearest] remove summon_nearest_enemy