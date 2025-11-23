fill ~-1 ~-2 ~-1 ~1 ~2 ~1 blue_ice
title @a actionbar [{"color":"green","selector":"@s","bold": true},{"color":"red","text":" has been frozen! Get near them to help!"}]
playsound entity.arrow.hit_player master @a ~ ~ ~ 100 0.8
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 10000 1
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 10000 0

execute if predicate kiwi2:chance_random_20 run fill ~-2 ~-1 ~0 ~-2 ~4 ~0 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~0 ~-3 ~-3 ~0 ~7 ~-3 packed_ice

execute if predicate kiwi2:chance_random_20 run fill ~-1 ~0 ~1 ~-3 ~5 ~3 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~2 ~-2 ~-1 ~1 ~4 ~-3 packed_ice

fill ~0 ~ ~-2 ~0 ~9 ~-2 packed_ice
fill ~2 ~-1 ~0 ~2 ~7 ~0 packed_ice
fill ~-1 ~3 ~1 ~-1 ~10 ~1 packed_ice

fill ~1 ~ ~1 ~1 ~8 ~1 packed_ice
fill ~-2 ~-2 ~0 ~-2 ~5 ~0 packed_ice
fill ~0 ~2 ~-1 ~0 ~11 ~-1 packed_ice

execute if predicate kiwi2:chance_random_20 run fill ~0 ~-5 ~0 ~0 ~2 ~0 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~-1 ~-3 ~-1 ~-1 ~4 ~-1 packed_ice

execute if predicate kiwi2:chance_random_50 run fill ~-2 ~ ~ ~-6 ~ ~ ice
execute if predicate kiwi2:chance_random_50 run fill ~-6 ~6 ~ ~-6 ~-4 ~ ice
execute if predicate kiwi2:chance_random_50 run fill ~ ~ ~3 ~ ~-6 ~3 ice
execute if predicate kiwi2:chance_random_50 run fill ~2 ~ ~ ~2 ~-6 ~ ice
execute if predicate kiwi2:chance_random_50 run fill ~-4 ~ ~ ~-4 ~-4 ~ ice
execute if predicate kiwi2:chance_random_50 run fill ~ ~ ~6 ~ ~-5 ~6 ice


execute if predicate kiwi2:chance_random_20 run fill ~3 ~ ~0 ~7 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_50 run fill ~-2 ~ ~0 ~-5 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_10 run fill ~0 ~ ~4 ~0 ~ ~9 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~0 ~ ~-3 ~0 ~ ~-6 packed_ice
execute if predicate kiwi2:chance_random_50 run fill ~0 ~-2 ~0 ~0 ~-7 ~0 packed_ice

execute if predicate kiwi2:chance_random_5 run fill ~5 ~-1 ~0 ~9 ~-1 ~0 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~-4 ~ ~0 ~-8 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_10 run fill ~0 ~ ~2 ~0 ~ ~5 packed_ice
execute if predicate kiwi2:chance_random_50 run fill ~0 ~ ~-5 ~0 ~ ~-8 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~0 ~-3 ~0 ~0 ~-9 ~0 packed_ice

execute if predicate kiwi2:chance_random_50 run fill ~2 ~ ~0 ~6 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_10 run fill ~-3 ~ ~0 ~-7 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~0 ~ ~3 ~0 ~ ~7 packed_ice
execute if predicate kiwi2:chance_random_5 run fill ~0 ~ ~-4 ~0 ~ ~-7 packed_ice
execute if predicate kiwi2:chance_random_50 run fill ~0 ~-4 ~0 ~0 ~-11 ~0 packed_ice

execute if predicate kiwi2:chance_random_20 run fill ~4 ~ ~0 ~8 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_10 run fill ~-5 ~ ~0 ~-9 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_50 run fill ~0 ~ ~6 ~0 ~ ~10 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~0 ~ ~-2 ~0 ~ ~-5 packed_ice
execute if predicate kiwi2:chance_random_10 run fill ~0 ~-1 ~0 ~0 ~-6 ~0 packed_ice

execute if predicate kiwi2:chance_random_5 run fill ~1 ~ ~0 ~4 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_50 run fill ~-1 ~ ~0 ~-4 ~ ~0 packed_ice
execute if predicate kiwi2:chance_random_20 run fill ~0 ~ ~1 ~0 ~ ~4 packed_ice
execute if predicate kiwi2:chance_random_10 run fill ~0 ~ ~-1 ~0 ~ ~-4 packed_ice
execute if predicate kiwi2:chance_random_5 run fill ~0 ~-5 ~0 ~0 ~-12 ~0 packed_ice

execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_1
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_2
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_3
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_4
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_5
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_6
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_7
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_8
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_9
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_10
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_11
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_12
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_13
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_14
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_15
execute if predicate kiwi2:chance_random_80 run function kiwi2:custom_mobs_fx/phantom_sovereign_snapfreeze/phantom_sovereign_snapfreeze_16
fill ~ ~ ~ ~ ~1 ~ minecraft:powder_snow
effect give @s slowness 999999 255 true
effect give @s mining_fatigue 999999 255 true
attribute @s jump_strength base set 0
tag @s add sovereign_frozen