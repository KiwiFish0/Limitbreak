execute in kiwi2:limitbreak_hub_dimension run kill @e[type=!player]
execute in kiwi2:limitbreak_hub_dimension run forceload add -20 -20 20 20
execute in kiwi2:limitbreak_hub_dimension run place structure kiwi2:limitbreak_hub 0 64 0
execute in kiwi2:limitbreak_hub_dimension run tp @a @e[type=armor_stand,tag=limitbreak_hub_spawnpoint,limit=1,sort=nearest]
scoreboard players set world spreadplayersX 0
scoreboard players set world spreadplayersZ 0
execute store result storage kiwi:teleport_storage pos.x double 1 run scoreboard players get world spreadplayersX
execute store result storage kiwi:teleport_storage pos.z double 1 run scoreboard players get world spreadplayersZ
gamerule doDaylightCycle false
scoreboard players set world hub_spawn_check 1
scoreboard players set world ongoing_run 0
scoreboard players set world teleport_countdown 0
scoreboard players set world Border 0
scoreboard players set world LengthOfDay 24000
scoreboard players set world IntermissionDayActive 0
scoreboard players set world Rollback_Day 0
execute in minecraft:overworld run function kiwi2:forceload_macro with storage kiwi:teleport_storage pos
schedule function kiwi2:kill_all_items 60t