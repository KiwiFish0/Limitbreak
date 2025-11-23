execute as @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..2,limit=1] run damage @s 2 kiwi2:seeker_shot_damage
execute as @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..2,limit=1] run data merge entity @s {Fire:200}
kill @s