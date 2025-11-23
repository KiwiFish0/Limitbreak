# Store random values in a proper NBT structure
execute store result storage kiwi:arrow_rain_storage pos.x double 1 run random value -4..4
execute store result storage kiwi:arrow_rain_storage pos.y double 1 run random value 0..1
execute store result storage kiwi:arrow_rain_storage pos.z double 1 run random value -4..4
# Store random values
execute store result storage kiwi:arrow_rain_random_motion pos.x double 0.04 run random value -2..2
execute store result storage kiwi:arrow_rain_random_motion pos.y double 1 run random value -3..-1
execute store result storage kiwi:arrow_rain_random_motion pos.z double 0.04 run random value -2..2
execute as @e[type=armor_stand,tag=arrow_rain_selector] run function kiwi:enchantment_function/teleport_macro with storage kiwi:arrow_rain_storage pos
execute at @e[type=armor_stand,tag=arrow_rain_selector] run function kiwi:enchantment_function/arrow_summon_macro with storage kiwi:arrow_rain_random_motion pos
execute as @e[type=armor_stand,tag=arrow_rain_target] at @s run tp @s ~ ~ ~ ~5 ~
execute at @e[type=armor_stand,tag=arrow_rain_target] run particle end_rod ^ ^1 ^7 0 0 0 0 1
execute at @e[type=armor_stand,tag=arrow_rain_target] run particle end_rod ^ ^1 ^-7 0 0 0 0 1