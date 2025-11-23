execute in kiwi2:limitbreak_hub_dimension as @e[type=armor_stand,tag=limitbreak_teleporter] at @s if entity @p[distance=..3] run function kiwi2:teleport_start_mechanism
execute unless score world teleport_countdown matches 1.. as @a at @s if dimension minecraft:overworld run tp @s @e[type=armor_stand,tag=limitbreak_hub_spawnpoint,limit=1,sort=nearest]
effect give @a saturation infinite 255 true
execute as @a[team=!Player_Glow] at @s run team join Player_Glow @a
execute as @a at @s unless score @s slayer_class_bought matches 0.. run scoreboard players set @a slayer_class_bought 0
execute as @a at @s unless score @s knight_class_bought matches 0.. run scoreboard players set @a knight_class_bought 0
execute as @a at @s unless score @s hunter_class_bought matches 0.. run scoreboard players set @a hunter_class_bought 0
execute as @a at @s unless score @s apothecary_class_bought matches 0.. run scoreboard players set @a apothecary_class_bought 0
execute as @a at @s unless score @s magus_class_bought matches 0.. run scoreboard players set @a magus_class_bought 0
execute as @a at @s unless score @s reaper_class_bought matches 0.. run scoreboard players set @a reaper_class_bought 0
execute as @a at @s unless score @s monk_class_bought matches 0.. run scoreboard players set @a monk_class_bought 0
execute as @a at @s unless score @s necromancer_class_bought matches 0.. run scoreboard players set @a necromancer_class_bought 0
execute as @a at @s unless score @s Credits matches 0.. run scoreboard players set @a Credits 0
scoreboard players add world HubTimer 1
execute if score world HubTimer matches 20.. run scoreboard players reset world HubTimer
execute unless score world teleport_countdown matches 1.. in minecraft:overworld as @a[distance=..999999999] at @s run function kiwi2:teleport_left_behind_player_to_hub
execute as @a at @s unless score world teleport_countdown matches 1.. run function kiwi2:upgrades/classes/show_current_class_hub
execute if entity @a[scores={ClassInfo=1..}] as @a[scores={ClassInfo=1..}] at @s run function kiwi2:hub/class_info/show_class_info