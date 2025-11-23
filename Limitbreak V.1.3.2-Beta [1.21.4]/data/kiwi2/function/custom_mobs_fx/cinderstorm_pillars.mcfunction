summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stone_pillar_marker"]}
spreadplayers ~ ~ 2.5 50 false @e[type=minecraft:armor_stand,tag=stone_pillar_marker]
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run function kiwi2:custom_mobs_fx/break_blocks_light_2x6
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~1 ~-4 ~2 ~-1 ~4 ~-2 basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~2 ~-4 ~1 ~-2 ~4 ~-1 basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~1 ~8 ~1 ~-1 ~8 ~-1 basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~1 ~-4 ~2 ~-1 ~14 ~-2 basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~2 ~-4 ~1 ~-2 ~14 ~-1 basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~1 ~8 ~1 ~-1 ~18 ~-1 basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_20 run fill ~-2 ~ ~ ~-2 ~25 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_20 run fill ~ ~ ~-2 ~ ~25 ~-2 basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_20 run fill ~-2 ~ ~2 ~-2 ~25 ~2 basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_20 run fill ~2 ~ ~-2 ~2 ~25 ~-2 basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_20 run fill ~ ~ ~2 ~ ~25 ~2 basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_20 run fill ~2 ~ ~ ~2 ~25 ~ basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~ ~ ~ ~ ~30 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~ ~ ~ ~ ~35 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_10 run fill ~ ~ ~ ~ ~40 ~ basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~-1 ~ ~ ~ ~30 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~-1 ~ ~ ~ ~35 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_10 run fill ~-1 ~ ~ ~ ~40 ~ basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~1 ~ ~ ~ ~30 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~-1 ~ ~ ~ ~35 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_10 run fill ~-1 ~ ~ ~ ~40 ~ basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~ ~ ~-1 ~ ~30 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~ ~ ~-1 ~ ~35 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_10 run fill ~ ~ ~-1 ~ ~40 ~ basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~ ~ ~1 ~ ~30 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_50 run fill ~ ~ ~1 ~ ~35 ~ basalt
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] if predicate kiwi2:chance_random_10 run fill ~ ~ ~1 ~ ~40 ~ basalt

execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run setblock ~ ~ ~ spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:blaze"}},weight:4},{data:{entity:{id:"minecraft:wither_skeleton"}},weight:4},{data:{entity:{id:"minecraft:ghast"}},weight:1},{data:{entity:{id:"minecraft:magma_cube"}},weight:2}]} replace
execute at @e[type=minecraft:armor_stand,tag=stone_pillar_marker] run fill ~-5 ~-1 ~-5 ~5 ~1 ~5 minecraft:fire replace #replaceable

kill @e[type=armor_stand,tag=stone_pillar_marker]