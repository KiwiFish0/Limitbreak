execute if score @s mob_fourth_skill_counter matches 1200 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1200 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1200 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1200 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1200 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1220 run spreadplayers ~ ~ 5 35 false @e[type=armor_stand,tag=phantom_sovereign_lightning_target]
execute if score @s mob_fourth_skill_counter matches 1220 run function kiwi2:custom_mobs_fx/phantom_sovereign_growl
execute if score @s mob_fourth_skill_counter matches 1220 at @s run particle electric_spark ~ ~1 ~ 15 3 15 0.1 500
execute if score @s mob_fourth_skill_counter matches 1225 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target] run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target_1"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1225 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_1] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1 force
execute if score @s mob_fourth_skill_counter matches 1225 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_1] run playsound minecraft:entity.arrow.hit_player master @a[distance=..7] ~ ~ ~ 1 0 1
execute if score @s mob_fourth_skill_counter matches 1230 run spreadplayers ~ ~ 5 35 false @e[type=armor_stand,tag=phantom_sovereign_lightning_target]
execute if score @s mob_fourth_skill_counter matches 1235 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target] run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target_2"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1235 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_2] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1 force
execute if score @s mob_fourth_skill_counter matches 1235 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_2] run playsound minecraft:entity.arrow.hit_player master @a[distance=..7] ~ ~ ~ 1 0 1
execute if score @s mob_fourth_skill_counter matches 1240 run spreadplayers ~ ~ 5 35 false @e[type=armor_stand,tag=phantom_sovereign_lightning_target]
execute if score @s mob_fourth_skill_counter matches 1245 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target] run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target_3"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1245 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_3] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1 force
execute if score @s mob_fourth_skill_counter matches 1245 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_3] run playsound minecraft:entity.arrow.hit_player master @a[distance=..7] ~ ~ ~ 1 0 1
execute if score @s mob_fourth_skill_counter matches 1250 if predicate kiwi2:chance_random_20 as @r at @s run function kiwi2:custom_mobs_fx/phantom_sovereign_levitate
execute if score @s mob_fourth_skill_counter matches 1250 run spreadplayers ~ ~ 5 35 false @e[type=armor_stand,tag=phantom_sovereign_lightning_target]
execute if score @s mob_fourth_skill_counter matches 1255 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target] run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_lightning_target_4"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1255 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_4] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1 force
execute if score @s mob_fourth_skill_counter matches 1255 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_4] run playsound minecraft:entity.arrow.hit_player master @a[distance=..7] ~ ~ ~ 1 0 1
execute if score @s mob_fourth_skill_counter matches 1260 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_1] run summon lightning_bolt ~ ~ ~
execute if score @s mob_fourth_skill_counter matches 1260 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_1] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_fourth_skill_counter matches 1270 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_2] run summon lightning_bolt ~ ~ ~
execute if score @s mob_fourth_skill_counter matches 1270 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_2] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_fourth_skill_counter matches 1280 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_3] run summon lightning_bolt ~ ~ ~
execute if score @s mob_fourth_skill_counter matches 1280 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_3] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_fourth_skill_counter matches 1290 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_4] run summon lightning_bolt ~ ~ ~
execute if score @s mob_fourth_skill_counter matches 1290 at @e[type=armor_stand,tag=phantom_sovereign_lightning_target_4] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_fourth_skill_counter matches 1291 run kill @e[type=armor_stand,tag=phantom_sovereign_lightning_target]
execute if score @s mob_fourth_skill_counter matches 1291 run kill @e[type=armor_stand,tag=phantom_sovereign_lightning_target_1]
execute if score @s mob_fourth_skill_counter matches 1291 run kill @e[type=armor_stand,tag=phantom_sovereign_lightning_target_2]
execute if score @s mob_fourth_skill_counter matches 1291 run kill @e[type=armor_stand,tag=phantom_sovereign_lightning_target_3]
execute if score @s mob_fourth_skill_counter matches 1291 run kill @e[type=armor_stand,tag=phantom_sovereign_lightning_target_4]
execute if score @s mob_fourth_skill_counter matches 1291 run kill @e[type=item]
execute if score @s mob_fourth_skill_counter matches 1200..1240 if predicate kiwi2:chance_random_0.5 as @r[limit=1] at @s run function kiwi2:custom_mobs_fx/phantom_sovereign_ice_wall
execute if score @s mob_fourth_skill_counter matches 1280..1300 if predicate kiwi2:chance_random_0.5 as @r[limit=1] at @s run function kiwi2:custom_mobs_fx/phantom_sovereign_ice_wall
execute if score @s mob_fourth_skill_counter matches 1200 run summon armor_stand ~ ~ ~ {Tags:["wave_mob","phantom_sovereign_meteor_target"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score @s mob_fourth_skill_counter matches 1210 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1210 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1215 run function kiwi2:custom_mobs_fx/phantom_sovereign_small_meteor_shower
execute if score @s mob_fourth_skill_counter matches 1220 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1230 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1235 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1240 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1245 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1250 run function kiwi2:custom_mobs_fx/phantom_sovereign_small_meteor_shower
execute if score @s mob_fourth_skill_counter matches 1255 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1260 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1265 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1270 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1275 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1280 run spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1290 run function kiwi2:custom_mobs_fx/phantom_sovereign_small_meteor_shower
execute if score @s mob_fourth_skill_counter matches 1290 at @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest] run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_fx
execute if score @s mob_fourth_skill_counter matches 1290 run kill @e[tag=phantom_sovereign_meteor_target,limit=1,sort=nearest]
execute if score @s mob_fourth_skill_counter matches 1300 run scoreboard players set @s mob_fourth_skill_counter 1190