scoreboard objectives add Day dummy
scoreboard objectives add Time dummy
scoreboard objectives add Rolled dummy
scoreboard objectives add Points dummy
scoreboard objectives add Mutation dummy
scoreboard objectives add Mutation_Rolled dummy
scoreboard objectives add Reward dummy
scoreboard objectives add Spawning_Rolled dummy
scoreboard objectives add Last_Spawning_Rolled dummy
scoreboard objectives add WAVE_1 dummy
scoreboard objectives add WAVE_2 dummy
scoreboard objectives add WAVE_3 dummy
scoreboard objectives add Gather_Point trigger
scoreboard objectives add ClassInfo trigger
scoreboard objectives add player_deaths deathCount
scoreboard objectives add LongerNights dummy
scoreboard objectives add Gametime dummy
scoreboard objectives add TotalDayTime dummy
scoreboard objectives add LengthOfDay dummy
scoreboard objectives add TimeLoopStartPoint dummy
scoreboard objectives add IntermissionDayCount dummy
scoreboard objectives add IntermissionDayActive dummy
scoreboard objectives add IntermissionDayExit trigger
scoreboard objectives add mob_first_skill_counter dummy
scoreboard objectives add mob_second_skill_counter dummy
scoreboard objectives add mob_third_skill_counter dummy
scoreboard objectives add mob_fourth_skill_counter dummy
scoreboard objectives add mob_fifth_skill_counter dummy
scoreboard objectives add Rollback_Day dummy
scoreboard objectives add Boss_Wave_Check dummy
scoreboard objectives add Boss_Death_Check dummy
scoreboard objectives add Point_Shop_Rolled dummy
scoreboard objectives add Custom_Armor_Set_Bonus dummy
scoreboard objectives add PointShopDayCount dummy
scoreboard objectives add SequenceCount dummy
scoreboard objectives add RestoreAttributes trigger
scoreboard objectives add StatCheck trigger
scoreboard objectives add Wave_1_Start dummy
scoreboard objectives add Wave_2_Start dummy
scoreboard objectives add Wave_3_Start dummy
scoreboard objectives add Border dummy
scoreboard objectives add IntermissionDayTitle dummy
scoreboard objectives add stats_highest_damage_dealt dummy
scoreboard objectives add stats_highest_damage_taken dummy
scoreboard objectives add stats_highest_damage_blocked dummy
scoreboard objectives add stats_highest_mobs_killed dummy
scoreboard objectives add stats_highest_projectiles_shot dummy
scoreboard objectives add stats_tellraw_roll dummy
scoreboard objectives add EndRun trigger
scoreboard objectives add HubTimer dummy
scoreboard players enable @a Gather_Point
execute unless score world ongoing_run matches 0 run scoreboard objectives setdisplay list Points
scoreboard objectives add Credits dummy
scoreboard objectives add world_upgrades dummy
scoreboard objectives add teleport_countdown dummy
scoreboard objectives add hub_spawn_check dummy
scoreboard objectives add credit_conversion_rate dummy
scoreboard objectives add credit_save_bank dummy
scoreboard objectives add spreadplayersX dummy
scoreboard objectives add spreadplayersZ dummy
scoreboard objectives add run_complete_credit_bonus dummy
scoreboard objectives add slayer_class_bought dummy
scoreboard objectives add knight_class_bought dummy
scoreboard objectives add hunter_class_bought dummy
scoreboard objectives add apothecary_class_bought dummy
scoreboard objectives add magus_class_bought dummy
scoreboard objectives add reaper_class_bought dummy
scoreboard objectives add monk_class_bought dummy
scoreboard objectives add necromancer_class_bought dummy
scoreboard objectives add limitbreak_chosen_class dummy
scoreboard objectives add ongoing_run dummy
scoreboard objectives add class_ability_scoreboard dummy
scoreboard objectives add stats_divide_by_10 dummy
scoreboard objectives add magus_homing_scoreboard dummy
scoreboard objectives add enemy_magus_spell_pick dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add LimitbreakValue10 dummy
scoreboard objectives add LimitbreakValue5 dummy
scoreboard objectives add LimitbreakValue0 dummy
scoreboard objectives add EntityHealth health
scoreboard players set world LimitbreakValue10 10
scoreboard players set world LimitbreakValue5 5
scoreboard players set world LimitbreakValue0 0
scoreboard players enable @a ClassInfo
execute store result score world PlayerCount run execute if entity @a
execute store result score world Day run time query day
execute if score world Day matches 0 unless score world hub_spawn_check matches 1.. run function kiwi2:spawn_limitbreak_hub
schedule function kiwi2:auto_reload 20t