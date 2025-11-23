execute store result bossbar boss_health value run data get entity @s Health
execute store result score @s phantom_sovereign_health run data get entity @s Health
scoreboard players add @s mob_first_skill_counter 1
execute if score @s mob_first_skill_counter matches 48 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 10 0.1 1
execute if score @s mob_first_skill_counter matches 48 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 10 0.1 1
execute if score @s mob_first_skill_counter matches 48 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 10 0.1 1
execute if score @s mob_first_skill_counter matches 48.. run scoreboard players reset @s mob_first_skill_counter

execute if entity @s[nbt={HurtTime:10s}] run spreadplayers ~ ~ 1 10 false @e[type=armor_stand,tag=phantom_sovereign_damage_marker,limit=1,sort=nearest]
execute if entity @s[nbt={HurtTime:10s}] store result storage kiwi:phantom_sovereign_y_pos pos.x float 1 run data get entity @e[type=armor_stand,tag=phantom_sovereign_damage_marker,limit=1,sort=nearest] Pos[0] 1
execute if entity @s[nbt={HurtTime:10s}] store result storage kiwi:phantom_sovereign_y_pos pos.y float 1 run data get entity @s Pos[1] 1
execute if entity @s[nbt={HurtTime:10s}] store result storage kiwi:phantom_sovereign_y_pos pos.z float 1 run data get entity @e[type=armor_stand,tag=phantom_sovereign_damage_marker,limit=1,sort=nearest] Pos[2] 1
execute if entity @s[nbt={HurtTime:10s}] run function kiwi2:custom_mobs_fx/phantom_sovereign_damage_marker_tp_macro with storage kiwi:phantom_sovereign_y_pos pos

scoreboard players add @s[tag=!phantom_sovereign_phase_5] mob_second_skill_counter 1
execute if score @s mob_second_skill_counter matches 200 run summon phantom ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob"],attributes:[{id:'minecraft:follow_range',base:12}],PersistenceRequired:1b}
execute if score @s mob_second_skill_counter matches 400 run summon phantom ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob"],attributes:[{id:'minecraft:follow_range',base:12}],PersistenceRequired:1b}
execute if score @s mob_second_skill_counter matches 600 run summon phantom ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob"],attributes:[{id:'minecraft:follow_range',base:12}],PersistenceRequired:1b}
execute if score @s mob_second_skill_counter matches 800 run summon phantom ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob"],attributes:[{id:'minecraft:follow_range',base:12}],PersistenceRequired:1b}
execute if score @s mob_second_skill_counter matches 1200 run summon phantom ~ ~ ~ {DeathLootTable:"",Health:120f,Size:10,Tags:["wave_mob"],Passengers:[{id:"minecraft:spawner_minecart",Tags:["wave_mob"],Invulnerable:1b,SpawnCount:10,MinSpawnDelay:10,MaxSpawnDelay:10,RequiredPlayerRange:32,SpawnData:{entity:{id:"minecraft:phantom",DeathTime:20,DeathLootTable:"",Health:1f,Tags:["wave_mob","explode"],attributes:[{id:"minecraft:gravity",base:10},{id:"minecraft:max_health",base:1},{id:"minecraft:scale",base:0.25}]}}}],attributes:[{id:"minecraft:max_health",base:120},{id:'minecraft:follow_range',base:256},{id:'minecraft:tempt_range',base:256}],PersistenceRequired:1b}
execute if score @s mob_second_skill_counter matches 1200 store result score @s mob_second_skill_counter run random value 1..120

scoreboard players add @s[tag=!phantom_sovereign_phase_5] mob_third_skill_counter 1
execute if score @s mob_third_skill_counter matches 1500 run summon vex ^32 ^-5 ^4 {Silent:1b,DeathTime:400,PersistenceRequired:1b,Health:100f,LifeTicks:1500,Tags:["wave_mob","no_glowing_wave_mob","nyxian_wind"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:399999600,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:3},{id:'minecraft:follow_range',base:256},{id:'minecraft:tempt_range',base:256}]}
execute if score @s mob_third_skill_counter matches 1500 run summon vex ^-32 ^-5 ^4 {Silent:1b,DeathTime:400,PersistenceRequired:1b,Health:100f,LifeTicks:1500,Tags:["wave_mob","no_glowing_wave_mob","nyxian_wind"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:399999600,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:3},{id:'minecraft:follow_range',base:256},{id:'minecraft:tempt_range',base:256}]}
execute if score @s mob_third_skill_counter matches 1500 store result score @s mob_third_skill_counter run random value 1..150

# Lightning Flurry / Meteor Shower / Snapfreeze
scoreboard players add @s[tag=!phantom_sovereign_defeat] mob_fourth_skill_counter 1
# Phase 1 & Phase 4
execute if score @s[tag=phantom_sovereign_phase_1,tag=!phantom_sovereign_phase_5] mob_fourth_skill_counter matches 1200..1292 run function kiwi2:custom_mobs_fx/phantom_sovereign_lightning_flurry
execute if score @s[tag=phantom_sovereign_phase_4,tag=!phantom_sovereign_phase_5] mob_fourth_skill_counter matches 1200..1292 run function kiwi2:custom_mobs_fx/phantom_sovereign_lightning_flurry

# Phase 3 & Phase 4 (phase 3 tag doesn't get removed)
execute if score @s[tag=phantom_sovereign_phase_3,tag=!phantom_sovereign_phase_5] mob_fourth_skill_counter matches 1200..1500 run function kiwi2:custom_mobs_fx/phantom_sovereign_meteor_shower

# Phase 3 & 4
execute if score @s[tag=phantom_sovereign_phase_3,tag=!phantom_sovereign_phase_5] mob_fourth_skill_counter matches 600 as @r at @s run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze
execute if entity @a[tag=sovereign_frozen] as @a[tag=sovereign_frozen] at @s if entity @a[tag=!sovereign_frozen,distance=..4] run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/freeze_breakout
execute if entity @a[tag=sovereign_frozen] as @a[tag=sovereign_frozen] at @s run particle snowflake ~ ~1 ~ 0.2 0.5 0.2 0 1

# Phase 5 Attacks
execute if score @s[tag=phantom_sovereign_phase_5,tag=!phantom_sovereign_defeat] mob_fourth_skill_counter matches 1200..1300 run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_5_attack

# Phase Handling
execute if score @s[tag=!phantom_sovereign_phase_2] phantom_sovereign_health matches ..716 run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_2_init
execute if score @s[tag=phantom_sovereign_phase_3,tag=!phantom_sovereign_phase_4] phantom_sovereign_health matches ..341 run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_4_init
execute if score @s[tag=phantom_sovereign_phase_4,tag=!phantom_sovereign_phase_5] phantom_sovereign_health matches ..100 run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_5_init
execute if entity @s[tag=phantom_sovereign_phase_2,tag=!phantom_sovereign_phase_2.1_complete] unless entity @e[tag=phantom_sovereign_phase_2.1] run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_2_2
execute if entity @s[tag=phantom_sovereign_phase_2,tag=phantom_sovereign_phase_2.1_complete,tag=!phantom_sovereign_phase_2.2_complete] unless entity @e[tag=phantom_sovereign_phase_2.2] run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_2_3
execute if entity @s[tag=phantom_sovereign_phase_2,tag=phantom_sovereign_phase_2.1_complete,tag=phantom_sovereign_phase_2.2_complete,tag=!phantom_sovereign_phase_3] unless entity @e[tag=phantom_sovereign_phase_2.3] run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_2_complete

# Phase 5 Desperation
execute if entity @s[tag=phantom_sovereign_phase_5] run scoreboard players add @s phantom_sovereign_phase_5_timer 1
execute if entity @s[tag=phantom_sovereign_phase_5] if score @s phantom_sovereign_phase_5_timer matches 1..4200 run function kiwi2:custom_mobs_fx/phantom_sovereign_phase_5_time