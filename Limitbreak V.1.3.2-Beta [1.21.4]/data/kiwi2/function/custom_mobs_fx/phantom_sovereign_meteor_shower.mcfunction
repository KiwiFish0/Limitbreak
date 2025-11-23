execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1300 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_meteor_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1310 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1320 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1320 run function kiwi2:custom_mobs_fx/phantom_sovereign_small_meteor_shower
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1330 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1340 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1350 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1360 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1380 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1380 run function kiwi2:custom_mobs_fx/phantom_sovereign_small_meteor_shower
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1490 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1410 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1420 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1450 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1460 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1490 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1500 run function kiwi2:custom_mobs_fx/phantom_sovereign_small_meteor_shower
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1500 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s[tag=phantom_sovereign_phase_3] mob_fourth_skill_counter matches 1500 run kill @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s[tag=phantom_sovereign_phase_3,tag=!phantom_sovereign_phase_5] mob_fourth_skill_counter matches 1500 run scoreboard players set @s mob_fourth_skill_counter 0
execute if score @s[tag=phantom_sovereign_phase_5] mob_fourth_skill_counter matches 1500 run scoreboard players set @s mob_fourth_skill_counter 1190