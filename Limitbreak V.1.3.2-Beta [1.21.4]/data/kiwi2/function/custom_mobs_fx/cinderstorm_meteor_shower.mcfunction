summon fireball ~ ~50 ~ {ExplosionPower:3b,Tags:["cinderstorm_meteor","wave_mob"],Item:{id:"minecraft:magma_block",count:1}}
summon fireball ~ ~50 ~ {ExplosionPower:3b,Tags:["cinderstorm_meteor","wave_mob"],Item:{id:"minecraft:magma_block",count:1}}
summon fireball ~ ~50 ~ {ExplosionPower:3b,Tags:["cinderstorm_meteor","wave_mob"],Item:{id:"minecraft:magma_block",count:1}}
summon fireball ~ ~50 ~ {ExplosionPower:3b,Tags:["cinderstorm_meteor","wave_mob"],Item:{id:"minecraft:magma_block",count:1}}
summon fireball ~ ~50 ~ {ExplosionPower:3b,Tags:["cinderstorm_meteor","wave_mob"],Item:{id:"minecraft:magma_block",count:1}}

execute as @e[type=blaze,tag=cinderstorm,limit=1] run spreadplayers ~ ~ 1 25 false @e[type=fireball,tag=cinderstorm_meteor]
execute as @e[type=fireball,tag=cinderstorm_meteor] at @s run tp @s ~ ~40 ~

execute as @e[type=fireball,tag=cinderstorm_meteor] run particle block_marker{block_state:"barrier"} ~ ~-39 ~ 0 0 0 1 1 force

execute as @e[type=fireball,tag=cinderstorm_meteor] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~50 ~
execute as @e[type=fireball,tag=cinderstorm_meteor] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~25 ~
execute as @e[type=fireball,tag=cinderstorm_meteor] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~30 ~
execute as @e[type=fireball,tag=cinderstorm_meteor] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~35 ~
execute as @e[type=fireball,tag=cinderstorm_meteor] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~40 ~

execute as @e[type=fireball,tag=cinderstorm_meteor] at @s run data modify entity @s Motion set value [0.0,-0.5,0.0]