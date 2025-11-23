# Day Survived Title
execute if score world Time matches 23999 store result score world Rolled run random value 1..6
execute if score world Time matches 23999 run function kiwi2:celebrate
execute if score world Time matches 23950..23999 run function kiwi2:wave_stats/wave_stats_main
execute if entity @a[scores={Gather_Point=1..}] as @a[scores={Gather_Point=1..}] at @s run function kiwi2:gather_point

# Daytime Bossbar
execute if score world Time matches 0..18000 store result bossbar daytime value run scoreboard players get world Time
execute if score world Time matches 0 run bossbar set minecraft:daytime visible true
execute if score world Time matches 0 run bossbar set minecraft:daytime players @a
execute if score world Time matches 18000 run bossbar set minecraft:daytime visible false

# Custom Mobs Mechanics
execute as @e[type=wolf,tag=wave_mob,tag=black_shuck] run function kiwi2:custom_mobs_fx/black_shuck_fx
execute as @e[type=wolf,tag=wave_mob,tag=hellhound] run function kiwi2:custom_mobs_fx/hellhound_fx
execute as @e[type=bee,tag=wave_mob] run function kiwi2:custom_mobs_fx/spawner_bees_fx
execute as @e[type=phantom,tag=explode] at @s if entity @p[distance=..2] run function kiwi2:custom_mobs_fx/phantom_explode
execute as @e[type=skeleton,tag=wave_mob,tag=lich] at @s run function kiwi2:custom_mobs_fx/lich_fx
execute as @e[type=skeleton,tag=wave_mob,tag=crystallized] at @s run function kiwi2:custom_mobs_fx/crystallized_corpses_fx
execute as @e[type=panda,tag=wave_mob,tag=colossal_panda] at @s run function kiwi2:custom_mobs_fx/colossal_panda
execute as @e[type=iron_golem,tag=wave_mob,tag=automaton] at @s run function kiwi2:custom_mobs_fx/automaton_fx
execute as @e[type=zombie,tag=wave_mob,tag=trickster] at @s run function kiwi2:custom_mobs_fx/trickster_fx
execute as @e[type=#undead,tag=wave_mob,tag=undead_knight] at @s run function kiwi2:custom_mobs_fx/undead_knight_fx
execute as @e[type=phantom,tag=wave_mob,tag=phantom_imperator] at @s run function kiwi2:custom_mobs_fx/phantom_imperator_fx
execute as @e[type=spider,tag=wave_mob,tag=goliath_spider] at @s run function kiwi2:custom_mobs_fx/goliath_spider_fx
execute as @e[type=bogged,tag=wave_mob,tag=drop_sculk_when_damaged] at @s run function kiwi2:custom_mobs_fx/sculkling_fx
execute as @e[type=skeleton,tag=wave_mob,tag=beholder] at @s run function kiwi2:custom_mobs_fx/beholder_fx
execute as @e[type=zombie,tag=wave_mob,tag=revenant] at @s run function kiwi2:custom_mobs_fx/revenant_fx
execute as @e[type=elder_guardian,tag=wave_mob,tag=ancient_guardian] at @s run function kiwi2:custom_mobs_fx/ancient_guardian_fx
execute as @e[type=vex,tag=wave_mob,tag=ice_spirit] at @s run function kiwi2:custom_mobs_fx/ice_spirit_fx
execute as @e[type=item_display,tag=wave_mob,tag=mind_effigy] at @s run function kiwi2:custom_mobs_fx/mind_effigy_fx
execute as @e[type=zombie,tag=wave_mob,tag=living_construct] at @s run function kiwi2:custom_mobs_fx/living_construct_fx
execute as @e[type=evoker,tag=wave_mob,tag=healer] at @s run function kiwi2:custom_mobs_fx/healer_fx
execute as @e[type=enderman,tag=wave_mob,tag=terminus_enderman] at @s run function kiwi2:custom_mobs_fx/terminus_enderman_fx
execute as @e[type=shulker,tag=wave_mob,tag=seer_shulker] at @s run function kiwi2:custom_mobs_fx/seer_shulker_fx
execute as @e[type=phantom,tag=wave_mob,tag=phantom_sovereign] at @s run function kiwi2:custom_mobs_fx/phantom_sovereign_fx
execute as @e[type=vex,tag=wave_mob,tag=nyxian_wind] at @s run function kiwi2:custom_mobs_fx/nyxian_wind_fx
execute as @e[type=skeleton,tag=wave_mob,tag=forsaken_lich] at @s run function kiwi2:custom_mobs_fx/forsaken_lich_fx
execute as @e[type=vex,tag=wave_mob,tag=lost_soul] at @s run function kiwi2:custom_mobs_fx/lost_soul_fx
execute as @e[type=spider,tag=wave_mob,tag=spider_matron] at @s run function kiwi2:custom_mobs_fx/spider_matron_fx
execute as @e[type=armor_stand,tag=encase_marker] at @s run function kiwi2:custom_mobs_fx/encase_web
execute as @e[type=blaze,tag=cinderstorm] at @s run function kiwi2:custom_mobs_fx/cinderstorm_fx
execute as @e[type=bat,tag=cinderstorm_tornado] at @s run function kiwi2:custom_mobs_fx/cinderstorm_hellbat
execute as @e[type=area_effect_cloud,tag=lava_geyser] at @s run function kiwi2:custom_mobs_fx/lava_geyser
execute as @e[type=stray,tag=enemy_magus] at @s run function kiwi2:custom_mobs_fx/magi/magi_fx
execute as @e[tag=wave_mob,type=spawner_minecart,predicate=kiwi2:no_riding] if entity @e[tag=wave_mob,type=spawner_minecart,predicate=kiwi2:no_riding] run kill @s
execute as @e[tag=controller_mob,predicate=kiwi2:no_riding] if entity @e[tag=controller_mob,predicate=kiwi2:no_riding] run function kiwi2:custom_mobs_fx/controller_mob_death
execute as @e[tag=boss_check,predicate=kiwi2:no_riding,type=slime] if entity @e[tag=boss_check,predicate=kiwi2:no_riding,type=slime] run function kiwi2:boss_death_check
execute as @e[tag=vehicle_mob,nbt=!{Passengers:[{}]}] if entity @e[tag=vehicle_mob,nbt=!{Passengers:[{}]}] run kill @s
execute if score world Time matches 18000.. run function kiwi2:teleport_wave_mobs_outside_of_border
execute if score world Time matches 18000 run gamerule maxEntityCramming 60
execute if score world Time matches 0 run gamerule maxEntityCramming 30

# Lives Mechanic
execute unless score world IntermissionDayActive matches 1 as @a[scores={player_deaths=1..}] as @s run function kiwi2:death_fx

# WAVE 1 Mechanics
execute if score world Time matches 16900..17500 run function kiwi2:teleport_warning
execute if score world Time matches 17500 run spreadplayers ~ ~ 0 1 false @a
execute if score world Time matches 17500 if score world Border matches 0 run worldborder set 50
execute if score world Time matches 17500 if score world Border matches 1 run worldborder set 75
execute if score world Time matches 17500 if score world Border matches 2 run worldborder set 100
execute if score world Time matches 17500 if score world Border matches 3 run worldborder set 150
execute if score world Time matches 17500 if score world Border matches 4 run worldborder set 200
execute if score world Time matches 18000 as @e[tag=gather_point] run data merge entity @s {Glowing:0b}
execute if score world Time matches 18000 run scoreboard players reset @a Gather_Point

# Wave Stats
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard objectives add stats_player_damage_dealt minecraft.custom:damage_dealt
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard objectives add stats_player_damage_taken minecraft.custom:damage_taken
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard objectives add stats_player_damage_blocked minecraft.custom:damage_blocked_by_shield
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard objectives add stats_player_mobs_killed minecraft.custom:minecraft.mob_kills
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard objectives add stats_player_projectiles_fired_bow minecraft.used:bow
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard objectives add stats_player_projectiles_fired_crossbow minecraft.used:crossbow

execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 store result score world Spawning_Rolled run random value 1..6
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18001 run title @a title [{"color":"red","text":"WAVE 1","bold": true}]
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18001 run execute at @a run playsound entity.wither.spawn master @a ~ ~ ~ 1 2
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run scoreboard players reset world WAVE_1
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run effect give @a resistance 3 255 true
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000..19999 run scoreboard players add world WAVE_1 1
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000..19999 store result bossbar minecraft:wave_1 value run scoreboard players get world WAVE_1
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run bossbar set minecraft:wave_1 visible true
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18000 run bossbar set minecraft:wave_1 players @a
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 19999 run bossbar set minecraft:wave_1 visible false
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 19999 run scoreboard players reset world WAVE_1

# WAVE 2 Mechanics (Only on Day 4+)
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000 if score world Day matches 4.. store result score world Spawning_Rolled run random value 1..5
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20001 if score world Day matches 4.. run title @a title [{"color":"red","text":"WAVE 2","bold": true}]
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20001 if score world Day matches 4.. run execute at @a run playsound entity.wither.spawn master @a ~ ~ ~ 1 1.6
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000 run scoreboard players reset world WAVE_2
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000 run effect give @a resistance 3 255 true
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000..21999 if score world Day matches 4.. run scoreboard players add world WAVE_2 1
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000..21999 if score world Day matches 4.. store result bossbar minecraft:wave_2 value run scoreboard players get world WAVE_2
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000 if score world Day matches 4.. run bossbar set minecraft:wave_2 visible true
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20000 if score world Day matches 4.. run bossbar set minecraft:wave_2 players @a
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 21999 if score world Day matches 4.. run bossbar set minecraft:wave_2 visible false
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 21999 if score world Day matches 4.. run scoreboard players reset world WAVE_2 

# WAVE 3 Mechanics (Only on Day 7+)
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000 if score world Day matches 7.. store result score world Spawning_Rolled run random value 1..5
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22001 if score world Day matches 7.. run title @a title [{"color":"red","text":"WAVE 3","bold": true}]
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22001 if score world Day matches 7.. run execute at @a run playsound entity.wither.spawn master @a ~ ~ ~ 1 1.2
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000 run scoreboard players reset world WAVE_3
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000 run effect give @a resistance 3 255 true
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000..23999 if score world Day matches 7.. run scoreboard players add world WAVE_3 1
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000..23999 if score world Day matches 7.. store result bossbar minecraft:wave_3 value run scoreboard players get world WAVE_3
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000 if score world Day matches 7.. run bossbar set minecraft:wave_3 visible true
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22000 if score world Day matches 7.. run bossbar set minecraft:wave_3 players @a
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 23999 if score world Day matches 7.. run bossbar set minecraft:wave_3 visible false
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 23999 if score world Day matches 7.. run scoreboard players reset world WAVE_3
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 23999 run effect give @e[tag=wave_mob,tag=!no_glowing_wave_mob] glowing infinite 1 true

# Boss Wave Mechanics (Every 10 Days)
execute if score world Time matches 17000 if score world IntermissionDayCount matches 10 run function kiwi2:boss_warn
execute if score world Time matches 17500.. if score world IntermissionDayCount matches 10 run function kiwi2:boss_ambient

# Longer Nights (Only on Day 10+)
# Enter Loop
execute if score world Time matches 22300 if score world Day matches 10.. run function kiwi2:longer_nights
# Loop for 12 times
execute if score world Time matches 23999 if score world Day matches 10.. run scoreboard players reset world LongerNights
# Exit Loop

# WAVE 1 Spawning (Day 0 - 10) (Day 0 Approx. Stone - Iron Weapons)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 18001..18011 if score world Day matches ..10 run function kiwi2:waves/wave_1/set_1/small_zombie_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 18001..18011 if score world Day matches ..10 run function kiwi2:waves/wave_1/set_1/small_skeleton_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 18001..18011 if score world Day matches ..10 run function kiwi2:waves/wave_1/set_1/small_creeper_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 18001..18011 if score world Day matches ..10 run function kiwi2:waves/wave_1/set_1/small_silverfish_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 18001..18011 if score world Day matches ..10 run function kiwi2:waves/wave_1/set_1/small_phantom_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 6 if score world Time matches 18001..18011 if score world Day matches ..10 run function kiwi2:waves/wave_1/set_1/small_spider_wave
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18012 run function kiwi2:heal_wave_mob
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 18021 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:waves/mutation/mutation_start

# WAVE 2 Spawning (Day 4 - 15) (Day 4 Approx. Full Iron Set)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 20001..20011 if score world Day matches 4..15 run function kiwi2:waves/wave_2/set_1/medium_skeleton_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 20001..20011 if score world Day matches 4..15 run function kiwi2:waves/wave_2/set_1/medium_zombie_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 20001..20011 if score world Day matches 4..15 run function kiwi2:waves/wave_2/set_1/small_creaking_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 20001..20011 if score world Day matches 4..15 run function kiwi2:waves/wave_2/set_1/small_wither_skeleton_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 20001..20011 if score world Day matches 4..15 run function kiwi2:waves/wave_2/set_1/small_blaze_wave
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20012 run function kiwi2:heal_wave_mob
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 20021 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:waves/mutation/mutation_start

# WAVE 3 Spawning (Day 7 - 20) (Day 7 Approx. Full Iron Set, Diamond Weapons)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 22001..22011 if score world Day matches 7..20 run function kiwi2:waves/wave_3/set_1/small_ravager_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 22001..22011 if score world Day matches 7..20 run function kiwi2:waves/wave_3/set_1/small_black_shuck_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 22001..22011 if score world Day matches 7..20 run function kiwi2:waves/wave_3/set_1/small_illusioner_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 22001..22011 if score world Day matches 7..20 run function kiwi2:waves/wave_3/set_1/small_pillager_evoker_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 22001..22011 if score world Day matches 7..20 run function kiwi2:waves/wave_3/set_1/small_matriarch_spider_wave
execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22012 run function kiwi2:heal_wave_mob
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 22021 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:waves/mutation/mutation_start

# # Day 5, chance for mutated waves increase to 10%.
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 17800 if score world Day matches 5.. store result score world Rolled run random value 1..100
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 19800 if score world Day matches 5.. store result score world Rolled run random value 1..100
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 21800 if score world Day matches 5.. store result score world Rolled run random value 1..100

# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 17801 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:mutation_wave
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 17920 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:mutation

# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 19801 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:mutation_wave
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 19920 if score world Day matches 5.. if score world Rolled <= world Mutation run function kiwi2:mutation

# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 21801 if score world Day matches 7.. if score world Rolled <= world Mutation run function kiwi2:mutation_wave
# execute unless score world Boss_Wave_Check matches 1 if score world Time matches 21920 if score world Day matches 7.. if score world Rolled <= world Mutation run function kiwi2:mutation

# BOSS WAVE Day 10
execute if score world Boss_Wave_Check matches 1 if score world Time matches 18001 if score world Day matches 10 run function kiwi2:waves/boss_waves/undead_knight

# Day 11 - 25: Wave 1 change (Day 11 Approx. Full Diamond Set, Enchanted Weapons [Intermission Day Accounted])
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 18001..18011 if score world Day matches 11..25 run function kiwi2:waves/wave_1/set_2/medium_bogged_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 18001..18011 if score world Day matches 11..25 run function kiwi2:waves/wave_1/set_2/large_skeleton_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 18001..18011 if score world Day matches 11..25 run function kiwi2:waves/wave_1/set_2/medium_piglin_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 18001..18011 if score world Day matches 11..25 run function kiwi2:waves/wave_1/set_2/medium_pillager_vindicator_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 18001..18011 if score world Day matches 11..25 run function kiwi2:waves/wave_1/set_2/small_great_silverfish_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 6 if score world Time matches 18001..18011 if score world Day matches 11..25 run function kiwi2:waves/wave_1/set_2/small_wither_guard_wave

# Day 16 - 30: Wave 2 change (Day 16 Approx. 1-2 Pieces of Netherite)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 20001..20011 if score world Day matches 16..30 run function kiwi2:waves/wave_2/set_2/small_phantom_broodmother_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 20001..20011 if score world Day matches 16..30 run function kiwi2:waves/wave_2/set_2/small_spider_queen_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 20001..20011 if score world Day matches 16..30 run function kiwi2:waves/wave_2/set_2/small_iron_golem_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 20001..20011 if score world Day matches 16..30 run function kiwi2:waves/wave_2/set_2/small_piglin_brute_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 20001..20011 if score world Day matches 16..30 run function kiwi2:waves/wave_2/set_2/medium_giant_endermite_wave

# BOSS WAVE Day 20
execute if score world Boss_Wave_Check matches 1 if score world Time matches 18001 if score world Day matches 20 run function kiwi2:waves/boss_waves/spider_matron_wave

# Day 21 - 35: Wave 3 change (Day 21 Approx. Full Netherite)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 22001..22011 if score world Day matches 21..35 run function kiwi2:waves/wave_3/set_2/small_lich_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 22001..22011 if score world Day matches 21..35 run function kiwi2:waves/wave_3/set_2/medium_blazing_breeze_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 22001..22011 if score world Day matches 21..35 run function kiwi2:waves/wave_3/set_2/small_hellhound_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 22001..22011 if score world Day matches 21..35 run function kiwi2:waves/wave_3/set_2/medium_spawner_bee_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 22001..22011 if score world Day matches 21..35 run function kiwi2:waves/wave_3/set_2/medium_ghast_wave

# Day 26 - 40: Wave 1 change (Day 26 Approx. Full Enchanted Netherite)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 18001..18011 if score world Day matches 26..40 run function kiwi2:waves/wave_1/set_3/medium_crystallized_corpses_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 18001..18011 if score world Day matches 26..40 run function kiwi2:waves/wave_1/set_3/large_terror_bunny_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 18001..18011 if score world Day matches 26..40 run function kiwi2:waves/wave_1/set_3/medium_titan_armadillo_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 18001..18011 if score world Day matches 26..40 run function kiwi2:waves/wave_1/set_3/small_automaton_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 18001..18011 if score world Day matches 26..40 run function kiwi2:waves/wave_1/set_3/medium_trickster_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 6 if score world Time matches 18001..18011 if score world Day matches 26..40 run function kiwi2:waves/wave_1/set_3/small_undead_knight_wave

# BOSS WAVE Day 30
execute if score world Boss_Wave_Check matches 1 if score world Time matches 18001 if score world Day matches 30 run function kiwi2:waves/boss_waves/cinderstorm_wave

# Day 31 - 45: Wave 2 change (Day 31 Approx. Maxed Netherite Set + Tier 3 Enchantments)
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 20001..20011 if score world Day matches 31..45 run function kiwi2:waves/wave_2/set_3/small_warden_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 20001..20011 if score world Day matches 31..45 run function kiwi2:waves/wave_2/set_3/small_sculkling_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 20001..20011 if score world Day matches 31..45 run function kiwi2:waves/wave_2/set_3/medium_great_silverfish_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 20001..20011 if score world Day matches 31..45 run function kiwi2:waves/wave_2/set_3/small_dreadnought_guard_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 20001..20011 if score world Day matches 31..45 run function kiwi2:waves/wave_2/set_3/medium_goliath_spider_wave

# Day 36 - 50: Wave 3 change
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 22001..22011 if score world Day matches 36..50 run function kiwi2:waves/wave_3/set_3/small_beholder_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 22001..22011 if score world Day matches 36..50 run function kiwi2:waves/wave_3/set_3/small_phantom_imperator_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 22001..22011 if score world Day matches 36..50 run function kiwi2:waves/wave_3/set_3/small_magi_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 22001..22011 if score world Day matches 36..50 run function kiwi2:waves/wave_3/set_3/small_ice_spirit_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 22001..22011 if score world Day matches 36..50 run function kiwi2:waves/wave_3/set_3/small_revenant_wave

# BOSS WAVE at Day 40
execute if score world Boss_Wave_Check matches 1 if score world Time matches 18001 if score world Day matches 40 run function kiwi2:waves/boss_waves/small_forsaken_lich_wave

# Day 41 - 50: Wave 1 change
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 1 if score world Time matches 18001..18011 if score world Day matches 41..55 run function kiwi2:waves/wave_1/set_4/medium_mind_effigy_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 2 if score world Time matches 18001..18011 if score world Day matches 41..55 run function kiwi2:waves/wave_1/set_4/medium_living_construct_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 3 if score world Time matches 18001..18011 if score world Day matches 41..55 run function kiwi2:waves/wave_1/set_4/small_pillager_army_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 4 if score world Time matches 18001..18011 if score world Day matches 41..55 run function kiwi2:waves/wave_1/set_4/small_terminus_enderman_wave
execute unless score world Boss_Wave_Check matches 1 if score world Spawning_Rolled matches 5 if score world Time matches 18001..18011 if score world Day matches 41..55 run function kiwi2:waves/wave_1/set_4/large_gladiator_wave

# BOSS WAVE at Day 50
execute if score world Boss_Wave_Check matches 1 if score world Time matches 18001 if score world Day matches 50 run function kiwi2:waves/boss_waves/phantom_sovereign_wave

execute if entity @a[gamemode=spectator] as @a[gamemode=spectator] at @s unless block ~ ~1.5 ~ #air run effect give @s blindness 3 255 true
