execute as @e[tag=oversunder_target,limit=1,sort=nearest] run attribute @s gravity base reset
execute as @e[tag=oversunder_target,limit=1,sort=nearest] run attribute @s explosion_knockback_resistance base reset
execute as @p[tag=oversunder_user,limit=1,sort=nearest] run attribute @s explosion_knockback_resistance base reset
execute as @e[tag=oversunder_target,limit=1,sort=nearest] run tag @s remove oversunder_target
execute as @p[tag=oversunder_user,limit=1,sort=nearest] at @s run scoreboard players set @s skill_oversunder 0
execute as @p[tag=oversunder_user,limit=1,sort=nearest] at @s run scoreboard players set @s skill_oversunder_cooldown 6000
execute as @p[tag=oversunder_user,limit=1,sort=nearest] run tag @s remove oversunder_user