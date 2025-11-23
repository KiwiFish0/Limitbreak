execute if entity @a[tag=monk_stillness_on] run schedule function kiwi2:upgrades/classes/monk/monk_stillness_fx 1t
effect give @a[tag=monk_stillness_on] resistance 2 1 true
effect give @a[tag=monk_stillness_on] speed 2 1 true
execute as @a[tag=monk_stillness_on] at @s as @e[type=!player,nbt={HurtTime:10s},type=!#items_and_non_mobs,distance=..3] at @s run function kiwi2:upgrades/classes/monk/monk_stillness_shockwave
execute as @a[tag=monk_stillness_on] at @s if predicate kiwi3:player_sneak run execute as @e[tag=monk_target,limit=1,sort=nearest] at @s run function kiwi2:upgrades/classes/monk/monk_stillness_teleport
execute as @a[tag=monk_stillness_on] at @s store result score @s monk_experience_levels run xp query @s levels
execute as @a[tag=monk_stillness_on] at @s if score @s monk_experience_levels matches 1.. run xp add @s -1 points
execute as @a[tag=monk_stillness_on] at @s if score @s monk_experience_levels matches 0 run function kiwi2:upgrades/classes/monk/monk_stillness_out_of_xp