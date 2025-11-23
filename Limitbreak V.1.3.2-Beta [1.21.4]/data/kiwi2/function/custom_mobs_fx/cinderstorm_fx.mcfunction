execute store result bossbar boss_health value run data get entity @s Health
execute store result score @s cinderstorm_health run data get entity @s Health
particle minecraft:flame ~ ~ ~ 10 10 10 0.01 3
particle minecraft:trial_spawner_detection ~ ~ ~ 10 10 10 0.01 3
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_fourth_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1
execute if entity @s[tag=cinderstorm_phase_2] run scoreboard players add @s mob_fifth_skill_counter 1
function kiwi2:custom_mobs_fx/cinderstorm_burn_blocks
execute unless entity @s[tag=cinderstorm_phase_2] run particle trial_spawner_detection ~ ~4 ~ 2 4 2 0 15
execute if entity @s[tag=cinderstorm_phase_2] run particle trial_spawner_detection_ominous ~ ~4 ~ 2 4 2 0 15

execute if entity @s[tag=!cinderstorm_phase_2] if entity @e[type=#impact_projectiles,distance=..8] as @e[type=#impact_projectiles,distance=..8] at @s if predicate kiwi2:chance_random_20 run function kiwi2:custom_mobs_fx/cinderstorm_projectile_burn
execute if entity @s[tag=cinderstorm_phase_2] if entity @e[type=#impact_projectiles,distance=..8] as @e[type=#impact_projectiles,distance=..8] at @s if predicate kiwi2:chance_random_50 run function kiwi2:custom_mobs_fx/cinderstorm_projectile_burn
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.blaze.hurt master @a[distance=..48] ~ ~4 ~ 1 0
execute if entity @s[nbt={HurtTime:10s}] if predicate kiwi2:chance_random_20 run playsound minecraft:entity.blaze.ambient master @a[distance=..48] ~ ~4 ~ 1 0
execute if entity @s[nbt={HurtTime:10s}] if entity @a[tag=cinderstorm_link_activated] as @a[tag=cinderstorm_link_activated] run damage @s 6

execute at @e[distance=..10,type=!blaze,type=!item,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,type=!#boat,type=!item_display,type=!text_display,type=!armor_stand,type=!area_effect_cloud,tag=!cinderstorm_tornado,limit=1] run function kiwi2:custom_mobs_fx/cinderstorm_area_damage
execute if score @s mob_first_skill_counter matches 900 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"flame"},Radius:5f,Duration:3000,Tags:["lava_geyser"]}
execute if score @s mob_first_skill_counter matches 900 as @e[type=area_effect_cloud,tag=lava_geyser] at @s run tp @s @r[distance=..40]
execute if score @s mob_first_skill_counter matches 2000 run data merge entity @s {Invulnerable:1b}
execute if score @s mob_first_skill_counter matches 2001 run summon tnt ~ ~4 ~
execute if score @s mob_first_skill_counter matches 2001 run summon tnt ~ ~8 ~
execute if score @s mob_first_skill_counter matches 2002 run data merge entity @s {Invulnerable:0b}
execute if score @s mob_first_skill_counter matches 2100.. run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 500 run function kiwi2:custom_mobs_fx/cinderstorm_meteor_shower
execute if score @s mob_second_skill_counter matches 500.. run scoreboard players reset @s mob_second_skill_counter

execute if score @s mob_third_skill_counter matches 300 run function kiwi2:custom_mobs_fx/cinderstorm_fire_rain
execute if score @s mob_third_skill_counter matches 300.. run scoreboard players reset @s mob_third_skill_counter

execute if score @s mob_fourth_skill_counter matches 800 run summon bat ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,DeathTime:0,Health:999999f,Tags:["cinderstorm_tornado","wave_mob"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:999999},{id:"burning_time",base:0}]}
execute if score @s mob_fourth_skill_counter matches 800.. run scoreboard players reset @s mob_fourth_skill_counter

execute if entity @s[tag=cinderstorm_phase_2] if score @s mob_fifth_skill_counter matches 1100 run tag @r[tag=!cinderstorm_link,limit=1] add cinderstorm_link
execute if entity @s[tag=cinderstorm_phase_2] if score @s mob_fifth_skill_counter matches 1200 run function kiwi2:custom_mobs_fx/cinderstorm_link

execute unless entity @s[tag=cinderstorm_phase_2] if score @s cinderstorm_health matches ..375 run function kiwi2:custom_mobs_fx/cinderstorm_phase_2_initiate
execute unless entity @s[tag=cinderstorm_phase_2] if score @s cinderstorm_health matches ..375 run tag @s add cinderstorm_phase_2