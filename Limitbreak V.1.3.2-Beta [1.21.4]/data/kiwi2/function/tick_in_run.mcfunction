execute store result score world Time run time query daytime
execute store result score world Day run time query day
execute unless score world IntermissionDayActive matches 1.. unless score world Day matches 51.. run function kiwi2:spawning
execute if entity @a[scores={RestoreAttributes=1..}] run function kiwi2:points/point_milestones_regive_after_death
execute if entity @a[scores={StatCheck=1..}] as @a[scores={StatCheck=1..}] at @s run function kiwi2:points/stat_checker/player_stats
execute if entity @a[scores={EndRun=1..}] as @a at @s run function kiwi2:manual_end_run_confirm
execute if score world Day matches 20.. run function kiwi2:reward_chest/day_20_39/custom_items_tick
execute if score world Day matches 40.. run function kiwi2:reward_chest/day_40_59/custom_items_tick
execute if score world IntermissionDayActive matches 1.. if score world Time matches 23998 run function kiwi2:intermission_day_active
execute as @a[scores={IntermissionDayExit=1..}] run function kiwi2:intermission_day_exit_confirm
execute as @a[advancements={kiwi2:point_crystal=true}] run function kiwi2:points/point_crystal_give
execute as @a[advancements={kiwi2:point_clump=true}] run function kiwi2:points/point_clump_give
execute as @a[advancements={kiwi2:point_dust=true}] run function kiwi2:points/point_dust_give
execute as @a[advancements={kiwi2:border_upgrade_1=true}] run function kiwi2:border/border_upgrade_1_give
execute as @a[advancements={kiwi2:border_upgrade_2=true}] run function kiwi2:border/border_upgrade_2_give
execute as @a[advancements={kiwi2:border_upgrade_3=true}] run function kiwi2:border/border_upgrade_3_give
execute as @a[advancements={kiwi2:border_upgrade_4=true}] run function kiwi2:border/border_upgrade_4_give
execute if entity @e[type=iron_golem,nbt={PlayerCreated:1b}] as @e[type=iron_golem,nbt={PlayerCreated:1b}] at @s run kill @s
execute if entity @a[nbt={attributes:[{modifiers:[{id:"minecraft:3500_points_max_health_upgrade"}]}]},tag=!skill_window] as @a[nbt={attributes:[{modifiers:[{id:"minecraft:3500_points_max_health_upgrade"}]}]},tag=!skill_window] at @s run function kiwi2:choose_skill_phase_2
execute if entity @a[tag=limitbreak_dead_player,gamemode=!spectator] as @a[tag=limitbreak_dead_player,gamemode=!spectator] at @s run gamemode spectator @s
execute if entity @a in minecraft:the_end run function kiwi2:end_island/check_for_respawn
execute in kiwi2:limitbreak_hub_dimension as @a[distance=..999999999] at @s run execute in minecraft:overworld run function kiwi2:coordinate_spreadplayers_macro_alone with storage kiwi:teleport_storage pos
execute if score world IntermissionDayActive matches 1 as @a[scores={player_deaths=1..}] run function kiwi2:death_in_intermission