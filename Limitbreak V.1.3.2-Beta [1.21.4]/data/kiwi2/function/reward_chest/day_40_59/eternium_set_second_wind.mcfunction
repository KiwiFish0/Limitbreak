tag @s add eternium_set_second_wind_activated
scoreboard objectives add eternium_set_second_wind_cd dummy
scoreboard players set @s eternium_set_second_wind_cd 12000
effect give @s speed 30 4 true
effect give @s absorption 30 4 true
effect give @s regeneration 30 4 true
particle totem_of_undying ~ ~1 ~ 0.4 0.8 0.4 0.5 50
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 2