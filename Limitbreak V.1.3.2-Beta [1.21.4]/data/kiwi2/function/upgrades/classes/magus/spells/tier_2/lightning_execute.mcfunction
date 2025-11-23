execute at @e[tag=magus_lightning_target] run summon lightning_bolt ~ ~ ~
execute as @e[tag=magus_lightning_target] at @s run damage @s 15 kiwi2:magus_lightning_damage
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run summon lightning_bolt ~ ~ ~
execute as @e[tag=magus_lightning_bolt_no_mobs_nearby] at @s run damage @s 15 kiwi2:magus_lightning_damage
tag @e[tag=magus_lightning_bolt_no_mobs_nearby] remove magus_lightning_bolt_no_mobs_nearby
tag @e[tag=magus_lightning_target] remove magus_lightning_target
kill @e[type=armor_stand,tag=magus_lightning_bolt_marker,sort=nearest]