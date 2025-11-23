execute in kiwi2:limitbreak_hub_dimension run tp @a @e[type=armor_stand,tag=limitbreak_hub_spawnpoint,limit=1,sort=nearest]
execute in minecraft:overworld run forceload remove all
execute as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 10000 0.3 1
title @a title {"text": ">> RUN TERMINATED <<","bold": true,"color":"red"}
title @a subtitle [{"bold":true,"color":"#e3750f","text":"Points"},{"color": "white","text": " have been converted to "},{"color":"#76BDF8","text":"⌬ Credits"}]
function kiwi2:convert_points_to_credits_end_run
scoreboard players add world spreadplayersX 100000
scoreboard players add world spreadplayersZ 100000
execute store result storage kiwi:teleport_storage pos.x double 1 run scoreboard players get world spreadplayersX
execute store result storage kiwi:teleport_storage pos.z double 1 run scoreboard players get world spreadplayersZ
execute in minecraft:overworld run function kiwi2:forceload_macro with storage kiwi:teleport_storage pos
worldborder set 59999968
bossbar set daytime visible false
bossbar set wave_1 visible false
bossbar set wave_2 visible false
bossbar set wave_3 visible false
scoreboard players set world ongoing_run 0
scoreboard players set world teleport_countdown 0
scoreboard players set @a necromancer_summon_count 0
scoreboard players set @a necromancer_current_souls 0
scoreboard players set @a player_deaths 0
tag @a remove limitbreak_dead_player
tag @a remove eternium_set_second_wind_activated
tag @a remove limitbreak_non_melee_class
tag @a remove magus_tier_2_unlocked
tag @a remove magus_tier_3_unlocked
tag @a remove magus_unstable_check_tier_1
tag @a remove magus_unstable_check_tier_2
tag @a remove magus_unstable_check_tier_3
tag @a remove skill_window
tag @a remove flicker_strike_ready
tag @a remove flicker_striked
bossbar remove mana_bar
bossbar remove mana_bar2
bossbar remove mana_bar3
bossbar remove mana_bar4
bossbar remove mana_bar5
bossbar remove mana_bar6
bossbar remove mana_bar7
bossbar remove mana_bar8
bossbar remove mana_bar9
bossbar remove mana_bar10
bossbar remove soul_bar
bossbar remove soul_bar2
bossbar remove soul_bar3
bossbar remove soul_bar4
bossbar remove soul_bar5
bossbar remove soul_bar6
bossbar remove soul_bar7
bossbar remove soul_bar8
bossbar remove soul_bar9
bossbar remove soul_bar10
clear @a
effect clear @a
xp set @a 0 levels
xp set @a 0 points
execute as @a at @s run function kiwi2:points/remove_all_milestones
execute as @a at @s run function kiwi2:upgrades/classes/class_modifiers_remove
effect give @a saturation infinite 255 true
gamemode survival @a