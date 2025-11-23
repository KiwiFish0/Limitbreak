execute if score world Time matches 17700 run title @a title [{"text": ">>","color": "red","bold": true},{"text": " BOSS WAVE ","color": "red","bold": true},{"text": "<<","color": "red","bold": true}]
execute if score world Time matches 17700 at @a run playsound minecraft:entity.wither.death master @a[distance=..1000000] ~ ~ ~ 0.5 0.8
execute if score world Time matches 17990 run scoreboard players set world Boss_Wave_Check 1

# Undead Knight
execute if score world Day matches 10 at @a run particle minecraft:sculk_soul ~ ~ ~ 20 10 20 0.01 2
execute if score world Day matches 10 if score world Time matches 17800.. at @a run particle minecraft:soul_fire_flame ~ ~ ~ 20 10 20 0.01 2

# Goliath Man-Eater
execute if score world Day matches 20 if score world Time matches 17500..17990 at @a run particle minecraft:dust_pillar{block_state:"dirt"} ~ ~ ~ 10 0.1 10 0.01 2
execute if score world Day matches 20 if score world Time matches 17500..17990 at @a run particle minecraft:dust_pillar{block_state:"stone"} ~ ~ ~ 10 0.1 10 0.01 2
execute if score world Day matches 20 if score world Time matches 17500..17990 if predicate kiwi2:chance_random_10 run playsound block.gravel.break master @a ~ ~ ~ 10000 0.1

# Cinderstorm
execute if score world Day matches 30 if score world Time matches 17500..17990 at @a run particle minecraft:flame ~ ~ ~ 10 10 10 0.01 3
execute if score world Day matches 30 if score world Time matches 17500..17990 at @a run particle minecraft:trial_spawner_detection ~ ~ ~ 10 10 10 0.01 3
execute if score world Day matches 30 if score world Time matches 17500..17990 if predicate kiwi2:chance_random_2 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 10 2

# Forsaken Lich
execute if score world Day matches 40 at @a run particle minecraft:enchant ~ ~ ~ 10 5 10 0.01 4
execute if score world Day matches 40 if score world Time matches 17800.. at @a run particle dripping_obsidian_tear ~ ~ ~ 20 10 20 0.01 1
execute if score world Day matches 40 if score world Time matches 17600 run playsound minecraft:block.chain.break master @a ~ ~ ~ 10000 .1
execute if score world Day matches 40 if score world Time matches 17800 run playsound minecraft:block.chain.break master @a ~ ~ ~ 10000 .1
execute if score world Day matches 40 if score world Time matches 17900 run playsound minecraft:block.chain.break master @a ~ ~ ~ 10000 .1
execute if score world Day matches 40 if score world Time matches 17950 run playsound minecraft:block.chain.break master @a ~ ~ ~ 10000 .1

# Phantom Sovereign
execute if score world Day matches 50 at @a run particle minecraft:end_rod ~ ~ ~ 10 5 10 0.01 1
execute if score world Day matches 50 if score world Time matches 17600 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 100 0.1 1
execute if score world Day matches 50 if score world Time matches 17800 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 100 0.1 1
execute if score world Day matches 50 if score world Time matches 17900 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 100 0.1 1
execute if score world Day matches 50 if score world Time matches 17950 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..150] ~ ~ ~ 100 0.1 1