particle gust ~ ~1.2 ~ 0.4 0.4 0.4 0.1 1
particle campfire_cosy_smoke ~ ~1.2 ~ 0.4 0.4 0.4 0 1
execute if predicate kiwi2:chance_random_2 run particle gust_emitter_large ~ ~1.2 ~ 0.8 0.8 0.8 0.1 1
particle large_smoke ~ ~1.2 ~ 0.5 0.5 0.5 0.1 1
execute if entity @a[distance=..10] run playsound minecraft:entity.fox.sniff master @a[distance=..10] ~ ~ ~ 0.5 0.1
execute if entity @a[distance=..10] if predicate kiwi2:chance_random_10 run playsound minecraft:entity.breeze.idle_air master @a[distance=..10] ~ ~ ~ 0.5 0.1
execute if entity @a[distance=..2] at @a[distance=..2] run summon armor_stand ~ ~-0.3 ~ {NoGravity:1b,Silent:1b,DeathTime:20,Invisible:1b,Health:0f,attributes:[{id:"minecraft:max_health",base:0}],active_effects:[{id:"minecraft:wind_charged",amplifier:1,duration:20,show_particles:0b}]}