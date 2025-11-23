execute at @e[tag=magus_lightning_target] run summon lightning_bolt ~-1 ~ ~
execute at @e[tag=magus_lightning_target] run summon lightning_bolt ~ ~ ~1
execute at @e[tag=magus_lightning_target] run summon lightning_bolt ~1 ~ ~
execute at @e[tag=magus_lightning_target] run summon lightning_bolt ~ ~ ~-1
execute as @e[tag=magus_lightning_target] at @s run particle trial_spawner_detection ~ ~1 ~ 2 0.2 2 0 100
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run summon lightning_bolt ~-1 ~ ~
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run summon lightning_bolt ~ ~ ~1
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run summon lightning_bolt ~1 ~ ~
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run summon lightning_bolt ~ ~ ~-1
execute as @e[tag=magus_lightning_bolt_no_mobs_nearby] at @s run particle trial_spawner_detection ~ ~1 ~ 2 0.2 2 0 100
tag @e[tag=magus_lightning_bolt_no_mobs_nearby] remove magus_lightning_bolt_no_mobs_nearby
tag @e[tag=magus_lightning_target] remove magus_lightning_target
kill @e[type=armor_stand,tag=magus_lightning_bolt_marker,sort=nearest]