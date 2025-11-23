tp @s ~ ~ ~ facing entity @p[tag=monk_stillness_on,predicate=kiwi3:player_sneak]
playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 2
execute at @p[tag=monk_stillness_on,sort=nearest] run particle minecraft:dust_plume ~ ~1 ~ 0.3 0.5 0.3 0 100
execute at @p[tag=monk_stillness_on,sort=nearest] run particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0.5 20
execute as @a[tag=monk_stillness_on] at @s if predicate kiwi3:player_sneak run execute as @e[tag=monk_target,limit=1,sort=nearest] at @s run tp @p[tag=monk_stillness_on,predicate=kiwi3:player_sneak] ^ ^2 ^-4 facing entity @s
tag @s remove monk_target