scoreboard players add @s mob_first_skill_counter 1
execute if entity @p[distance=..3,gamemode=survival] run function kiwi2:custom_mobs_fx/spider_matron_encase
execute if entity @p[distance=..4] run playsound block.respawn_anchor.ambient master @a[distance=..4] ~ ~ ~ 1 .1
execute if score @s mob_first_skill_counter matches 60 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"dust_pillar",block_state:"minecraft:dirt"},Radius:1f,RadiusPerTick:0.04f,Duration:60,potion_contents:{custom_effects:[{id:"minecraft:blindness",amplifier:1,duration:60,show_particles:1b,show_icon:1b,ambient:0b}]}}
execute if score @s mob_first_skill_counter matches 60.. run scoreboard players reset @s mob_first_skill_counter