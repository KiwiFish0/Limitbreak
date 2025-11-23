execute if predicate kiwi2:chance_random_80 if block ^ ^ ^-1 air run setblock ^ ^ ^-1 ice
execute if predicate kiwi2:chance_random_20 if block ^ ^ ^-1 air run setblock ^ ^ ^-1 snow_block
execute if predicate kiwi2:chance_random_20 if block ^ ^ ^-1 air run setblock ^ ^ ^-1 packed_ice
execute if predicate kiwi2:chance_random_20 if block ^ ^ ^-1 air run setblock ^ ^ ^-1 blue_ice
execute if predicate kiwi2:chance_random_10 if block ^ ^ ^-1 air run setblock ^ ^ ^-1 powder_snow
particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 2
particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 0 2
damage @e[limit=1,sort=nearest,distance=..3,tag=!wave_mob] 5 freeze by @s
data merge entity @e[limit=1,sort=nearest,distance=..3,tag=!wave_mob] {TicksFrozen:200}