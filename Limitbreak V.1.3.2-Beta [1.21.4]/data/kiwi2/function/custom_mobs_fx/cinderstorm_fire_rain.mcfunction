summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
summon small_fireball ~ ~50 ~ {Tags:["cinderstorm_rain","wave_mob"]}
effect clear @e[type=blaze,tag=cinderstorm]
execute as @e[type=blaze,tag=cinderstorm,limit=1] run spreadplayers ~ ~ 1 30 false @e[type=small_fireball,tag=cinderstorm_rain]
execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s run tp @s ~ ~40 ~

execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~50 ~
execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~25 ~
execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~30 ~
execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~35 ~
execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s if predicate kiwi2:chance_random_20 run tp @s ~ ~40 ~

execute as @e[type=small_fireball,tag=cinderstorm_rain] at @s run data modify entity @s Motion set value [0.0,-0.5,0.0]