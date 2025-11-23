scoreboard players add @s mob_first_skill_counter 1
execute if score @s mob_first_skill_counter matches 449 at @r[distance=..12] if predicate kiwi2:chance_random_50 run setblock ~ ~ ~ cobweb
execute if score @s mob_first_skill_counter matches 449 at @r[distance=..12] if predicate kiwi2:chance_random_50 run setblock ~ ~1 ~ cobweb
execute if score @s mob_first_skill_counter matches 449 at @r[distance=..12] if predicate kiwi2:chance_random_50 run setblock ~-1 ~ ~ cobweb
execute if score @s mob_first_skill_counter matches 449 at @r[distance=..12] if predicate kiwi2:chance_random_50 run setblock ~ ~ ~1 cobweb
execute if score @s mob_first_skill_counter matches 449 at @r[distance=..12] if predicate kiwi2:chance_random_50 run setblock ~1 ~ ~ cobweb
execute if score @s mob_first_skill_counter matches 449 at @r[distance=..12] if predicate kiwi2:chance_random_50 run setblock ~ ~ ~-1 cobweb
execute if score @s mob_first_skill_counter matches 449 if predicate kiwi2:chance_random_10 run effect give @s invisibility 15 1 true
execute if score @s mob_first_skill_counter matches 450 run scoreboard players reset @s mob_first_skill_counter