execute if score @s mob_third_skill_counter matches 50 run damage @p 25 kiwi2:undead_knight_slice by @s
execute if score @s mob_third_skill_counter matches 50 at @p run particle minecraft:flash ~ ~1 ~ 0 0 0 0.1 5
execute if score @s mob_third_skill_counter matches 50 at @p run particle minecraft:soul_fire_flame ~ ~1 ~ 0.25 0.5 0.25 0.5 50
execute if score @s mob_third_skill_counter matches 50 run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..25] ~ ~ ~ 1 2
execute if score @s mob_third_skill_counter matches 50 run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..25] ~ ~ ~ 1 2
execute if score @s mob_third_skill_counter matches 50 run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..25] ~ ~ ~ 1 2
execute if score @s mob_third_skill_counter matches 50 if predicate kiwi2:chance_random_50 as @p run summon breeze_wind_charge ~ ~ ~ {Motion:[0.0,-5.0,0.7]}
execute if score @s mob_third_skill_counter matches 50 if predicate kiwi2:chance_random_50 as @p run summon breeze_wind_charge ~ ~ ~ {Motion:[0.7,-5.0,0.0]}
execute if score @s mob_third_skill_counter matches 50 run scoreboard players reset @s mob_second_skill_counter
execute if score @s mob_third_skill_counter matches 50 run scoreboard players reset @s mob_third_skill_counter