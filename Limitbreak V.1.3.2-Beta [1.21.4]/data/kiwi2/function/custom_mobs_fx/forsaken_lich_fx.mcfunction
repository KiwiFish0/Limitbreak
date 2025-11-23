execute store result bossbar boss_health value run data get entity @s Health
execute store result score @s forsaken_lich_health run data get entity @s Health
execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run effect clear @s levitation
execute at @e[type=armor_stand,tag=forsaken_lich_fx,tag=controller_mob] run particle soul_fire_flame ~ ~-4.05 ~ 1.5 0 1.5 0 5
execute at @e[type=armor_stand,tag=forsaken_lich_fx,tag=controller_mob] run particle soul ~ ~-4.05 ~ 1.5 0 1.5 0 5
execute as @e[type=armor_stand,tag=forsaken_lich_fx,tag=controller_mob,tag=!forsaken_lich_phase_3] store result storage kiwi:forsaken_lich_pos pos.x double 0.1 run data get entity @s Pos[0] 10
execute as @e[type=armor_stand,tag=forsaken_lich_fx,tag=controller_mob,tag=!forsaken_lich_phase_3] store result storage kiwi:forsaken_lich_pos pos.y double 0.1 run data get entity @s Pos[1] 9.8
execute as @e[type=armor_stand,tag=forsaken_lich_fx,tag=controller_mob,tag=!forsaken_lich_phase_3] store result storage kiwi:forsaken_lich_pos pos.z double 0.1 run data get entity @s Pos[2] 10
execute as @s[tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro3 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro4 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro5 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro6 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro7 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro8 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro9 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro10 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro2.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro3.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro4.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro5.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro6.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro7.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro8.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro9.2 with storage kiwi:forsaken_lich_pos pos
execute as @s[tag=!forsaken_lich_phase_2,tag=!forsaken_lich_phase_3] run function kiwi2:custom_mobs_fx/forsaken_lich_chain_fx/forsaken_lich_chain_macro10.2 with storage kiwi:forsaken_lich_pos pos
execute at @s run particle large_smoke ~ ~2 ~ 1.5 1 1.5 0 1

execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.chain.break master @a[distance=..15] ~ ~ ~ 1 .1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 1 .1

scoreboard players add @s mob_first_skill_counter 1
execute if predicate kiwi2:chance_random_80 run scoreboard players add @s mob_second_skill_counter 1
execute if predicate kiwi2:chance_random_50 run scoreboard players add @s mob_third_skill_counter 1
execute if predicate kiwi2:chance_random_20 run scoreboard players add @s mob_fourth_skill_counter 1
execute if predicate kiwi2:chance_random_10 run scoreboard players add @s mob_fifth_skill_counter 1

execute if score @s mob_first_skill_counter matches 200 run summon skeleton ~ ~1 ~ {DeathLootTable:"",Tags:["forsaken_lich_new_skeleton","wave_mob"],HandItems:[{id:"minecraft:iron_sword",count:1},{}]}
execute if score @s mob_first_skill_counter matches 200 run summon skeleton ~ ~1 ~ {DeathLootTable:"",Tags:["forsaken_lich_new_skeleton","wave_mob"],HandItems:[{id:"minecraft:iron_shovel",count:1},{}]}
execute if score @s mob_first_skill_counter matches 201 run spreadplayers ~ ~ 1 10 false @e[type=skeleton,tag=forsaken_lich_new_skeleton]
execute if score @s mob_first_skill_counter matches 202 run tag @e[tag=forsaken_lich_new_skeleton] remove forsaken_lich_new_skeleton
execute if score @s mob_first_skill_counter matches 203 run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 200 run summon zombie ~ ~1 ~ {DeathLootTable:"",Tags:["forsaken_lich_new_zombie","wave_mob"],HandItems:[{id:"minecraft:iron_axe",count:1},{}]}
execute if score @s mob_second_skill_counter matches 200 run summon zombie ~ ~1 ~ {DeathLootTable:"",Tags:["forsaken_lich_new_zombie","wave_mob"],HandItems:[{id:"minecraft:iron_hoe",count:1},{}]}
execute if score @s mob_second_skill_counter matches 201 run spreadplayers ~ ~ 1 10 false @e[type=zombie,tag=forsaken_lich_new_zombie]
execute if score @s mob_second_skill_counter matches 202 run tag @e[tag=forsaken_lich_new_zombie] remove forsaken_lich_new_zombie
execute if score @s mob_second_skill_counter matches 203 run scoreboard players reset @s mob_second_skill_counter

execute unless entity @e[type=vex,tag=forsaken_lich_new_lost_soul,limit=2,distance=..5] if score @s mob_third_skill_counter matches 200 run summon vex ~ ~ ~ {DeathLootTable:"",Health:100f,LifeTicks:199999980,Tags:["wave_mob","forsaken_lich_new_lost_soul","lost_soul"],attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:2}]}
execute if score @s mob_third_skill_counter matches 201 run spreadplayers ~ ~ 1 10 false @e[type=vex,tag=forsaken_lich_new_lost_soul]
execute if score @s mob_third_skill_counter matches 202 run tag @e[tag=forsaken_lich_new_lost_soul] remove forsaken_lich_new_lost_soul
execute if score @s[tag=forsaken_lich_phase_2] mob_third_skill_counter matches 202 if predicate kiwi2:chance_random_50 as @s run spreadplayers ~ ~ 7 25 false @e[type=armor_stand,tag=forsaken_lich_soul_well]
execute if score @s mob_third_skill_counter matches 203 run scoreboard players reset @s mob_third_skill_counter

execute if score @s mob_fourth_skill_counter matches 1500 run function kiwi2:custom_mobs_fx/forsaken_lich_switch_players
execute if score @s mob_fourth_skill_counter matches 1500 store result score @s mob_fourth_skill_counter run random value 1..400

execute unless entity @e[type=zombie,tag=undead_knight,tag=forsaken_lich_new_knight,limit=2,distance=..5] if score @s mob_fifth_skill_counter matches 200 run summon zombie ~ ~ ~ {DeathLootTable:"",Silent:1b,Health:200f,Tags:["wave_mob","undead_knight","forsaken_lich_new_knight"],HandItems:[{id:"minecraft:netherite_sword",count:1},{id:"minecraft:shield",count:1}],ArmorItems:[{id:"minecraft:netherite_boots",count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:netherite_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"xDarklightx"}}}],attributes:[{id:"minecraft:attack_damage",base:9},{id:"minecraft:follow_range",base:100},{id:"minecraft:knockback_resistance",base:1},{id:explosion_knockback_resistance,base:1},{id:"minecraft:max_health",base:200},{id:"movement_speed",base:0.3},{id:"safe_fall_distance",base:10},{id:"armor",base:10}]}
execute if score @s mob_fifth_skill_counter matches 201 run spreadplayers ~ ~ 1 10 false @e[type=zombie,tag=forsaken_lich_new_knight]
execute if score @s mob_fifth_skill_counter matches 202 run tag @e[tag=forsaken_lich_new_knight] remove forsaken_lich_new_knight
execute if score @s mob_fifth_skill_counter matches 203 run scoreboard players reset @s mob_fifth_skill_counter

execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run tellraw @a [{"color":"#44C8E3","bold":true,"text":"[Forsaken Lich]"},{"bold":false,"color":"#256C7A","italic":false,"obfuscated":false,"text":" Vincula rubent... abyssus vocat. "}]
execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["forsaken_lich_soul_well"]}
execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["forsaken_lich_soul_well"]}
execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["forsaken_lich_soul_well"]}
execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["forsaken_lich_soul_well"]}
execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["forsaken_lich_soul_well"]}
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run spreadplayers ~ ~ 7 25 false @e[type=armor_stand,tag=forsaken_lich_soul_well]
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 at @s run particle campfire_signal_smoke ~ ~1.5 ~ 0 0 0 0.8 75
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 at @s run particle soul ~ ~1 ~ 4 1 4 0.1 250
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound minecraft:entity.skeleton_horse.death master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound block.chain.break master @a[distance=..5000] ~ ~ ~ 1 1
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound block.chain.break master @a[distance=..5000] ~ ~ ~ 1 1
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound block.chain.break master @a[distance=..5000] ~ ~ ~ 1 1
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound block.chain.break master @a[distance=..5000] ~ ~ ~ 1 1
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound block.chain.break master @a[distance=..5000] ~ ~ ~ 1 1
execute unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 as @s run playsound minecraft:entity.wither.break_block master @a[distance=..5000] ~ ~ ~ 1 .8
execute as @s unless entity @s[tag=forsaken_lich_phase_2] if score @s forsaken_lich_health matches ..512 run tag @s add forsaken_lich_phase_2
execute if entity @s[tag=forsaken_lich_phase_2] at @e[type=armor_stand,tag=forsaken_lich_soul_well] as @e[distance=..5,type=!armor_stand,type=!item,type=!item_display,type=!block_display,type=!#impact_projectiles,type=!#boat,tag=!wave_mob,tag=!boss_check] at @s if block ~ ~0.1 ~ air run tp @s ~ ~-1 ~
execute if entity @s[tag=forsaken_lich_phase_2] at @e[type=armor_stand,tag=forsaken_lich_soul_well] run particle sculk_soul ~ ~-0.05 ~ 1.5 0 1.5 0 5 force
execute if entity @s[tag=forsaken_lich_phase_2] at @e[type=armor_stand,tag=forsaken_lich_soul_well] run particle soul_fire_flame ~ ~1.5 ~ 0.1 1.5 0.1 0 5 force
execute if entity @s[tag=forsaken_lich_phase_2] at @e[type=armor_stand,tag=forsaken_lich_soul_well] run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..5] ~ ~ ~ .3 .1
execute if entity @s[tag=forsaken_lich_phase_2] at @e[type=armor_stand,tag=forsaken_lich_soul_well] run damage @e[distance=..5,limit=1,type=!armor_stand,type=!item,type=!item_display,type=!block_display,type=!#impact_projectiles,type=!#boat,tag=!wave_mob,tag=!boss_check] 4 magic by @e[tag=forsaken_lich,limit=1] from @e[tag=forsaken_lich,limit=1]

execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run tellraw @a [{"color":"#44C8E3","bold":true,"text":"[Forsaken Lich]"},{"bold":false,"color":"#256C7A","italic":false,"obfuscated":false,"text":" Exsecratus... nunc solutus. "}]
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run tellraw @a [{"color":"#44C8E3","bold":true,"text":"[Forsaken Lich]"},{"bold":false,"color":"#256C7A","italic":false,"obfuscated":false,"text":" Merge in aeternum. "}]
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run effect give @s resistance 5 255 true
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1 1.4
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:entity.ravager.stunned master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:entity.ravager.stunned master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:entity.ravager.stunned master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:block.chain.break master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:block.chain.break master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:block.chain.break master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:block.chain.break master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run playsound minecraft:block.chain.break master @a[distance=..5000] ~ ~ ~ 1 0.1 1
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 at @s run summon tnt ~ ~ ~
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 at @s run summon lightning_bolt ~ ~ ~
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 as @s run data merge entity @s {attributes:[{id:"movement_speed",base:0.4d},{id:"attack_damage",base:15d},{id:"attack_knockback",base:4d}]}
execute as @s unless entity @s[tag=forsaken_lich_phase_3] if score @s forsaken_lich_health matches ..256 run tag @s add forsaken_lich_phase_3
execute as @s if entity @s[tag=forsaken_lich_phase_3] at @s run particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.4 1 0.4 0.03 10