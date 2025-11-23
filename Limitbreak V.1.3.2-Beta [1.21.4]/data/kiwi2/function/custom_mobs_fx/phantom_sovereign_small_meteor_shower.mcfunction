summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
summon fireball ~ ~150 ~ {ExplosionPower:3b,Invulnerable:0b,Motion:[0.0,-0.5,0.0],Tags:["wave_mob","phantom_sovereign_meteor_small"],Item:{id:"minecraft:fire_charge",count:1}}
kill @e[type=item]

spreadplayers ~ ~ 1 35 false @e[tag=phantom_sovereign_meteor_small,limit=10,sort=nearest]

execute as @e[tag=phantom_sovereign_meteor_small] at @s run tp @s ~ ~40 ~
execute as @e[tag=phantom_sovereign_meteor_small] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~50 ~
execute as @e[tag=phantom_sovereign_meteor_small] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~25 ~
execute as @e[tag=phantom_sovereign_meteor_small] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~30 ~
execute as @e[tag=phantom_sovereign_meteor_small] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~35 ~
execute as @e[tag=phantom_sovereign_meteor_small] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~40 ~

execute as @e[tag=phantom_sovereign_meteor_small] at @s run data modify entity @s Motion set value [0.0,-0.5,0.0]