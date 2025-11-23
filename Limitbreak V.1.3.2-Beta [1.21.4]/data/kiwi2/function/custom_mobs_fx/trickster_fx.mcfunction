scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1
execute if score @s mob_first_skill_counter matches 200 run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={id:[I;497185463,1962100385,-1845487978,-179087236],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA3MDg0YTBlMzcwMTE5ZmUwZDhlYzQ0MGUyNzgzMDY5MDM0N2Y4YzcxNWNhMzg2ZmRhZjUwYjUxYmM3YmQwOSJ9fX0="}]}]
execute if score @s mob_first_skill_counter matches 206 run item replace entity @s armor.head with air
execute if score @s mob_first_skill_counter matches 206 run particle large_smoke ~ ~1.75 ~ 0.25 0.25 0.25 0.1 5
execute if score @s mob_first_skill_counter matches 206 run playsound minecraft:entity.ender_dragon.flap master @a[distance=..10] ~ ~ ~ 1 1.5
execute if score @s mob_first_skill_counter matches 220 run playsound minecraft:entity.allay.ambient_without_item master @a[distance=..15] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 220 run playsound minecraft:entity.sniffer.happy master @a ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 220.. run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 10 if predicate kiwi2:chance_random_50 run scoreboard players reset @s
execute if score @s mob_second_skill_counter matches 50 if predicate kiwi2:chance_random_2 run playsound minecraft:entity.witch.celebrate master @r[distance=..10] ~ ~ ~ 1 2 1
execute if score @s mob_second_skill_counter matches 100 if predicate kiwi2:chance_random_2 run playsound minecraft:entity.evoker.celebrate master @r[distance=..10] ~ ~ ~ 1 2 1
execute if score @s mob_second_skill_counter matches 300 if predicate kiwi2:chance_random_2 run playsound minecraft:entity.pillager.celebrate master @r[distance=..10] ~ ~ ~ 1 2 1
execute if score @s mob_second_skill_counter matches 400 if predicate kiwi2:chance_random_50 at @r run function kiwi2:custom_mobs_fx/trickster_teleport
execute if score @s mob_second_skill_counter matches 400.. run scoreboard players reset @s mob_second_skill_counter

execute if score @s mob_third_skill_counter matches 150 if predicate kiwi2:chance_random_2 run effect give @r blindness 3 1 true
execute if score @s mob_third_skill_counter matches 150 if predicate kiwi2:chance_random_2 run effect give @r poison 3 1 true
execute if score @s mob_third_skill_counter matches 150 if predicate kiwi2:chance_random_2 run effect give @r slowness 3 1 true
execute if score @s mob_third_skill_counter matches 150 if predicate kiwi2:chance_random_2 run effect give @r jump_boost 5 15 true
execute if score @s mob_third_skill_counter matches 480 if predicate kiwi2:chance_random_2 run item replace entity @e[tag=trickster,tag=wave_mob,type=zombie] armor.head with minecraft:player_head[minecraft:profile={id:[I;497185463,1962100385,-1845487978,-179087236],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA3MDg0YTBlMzcwMTE5ZmUwZDhlYzQ0MGUyNzgzMDY5MDM0N2Y4YzcxNWNhMzg2ZmRhZjUwYjUxYmM3YmQwOSJ9fX0="}]}]
execute if score @s mob_third_skill_counter matches 500 if predicate kiwi2:chance_random_2 run spreadplayers ~ ~ 1 20 true @a[limit=2]
execute if score @s mob_third_skill_counter matches 500 run item replace entity @e[tag=trickster,tag=wave_mob,type=zombie] armor.head with air
execute if score @s mob_third_skill_counter matches 500.. run scoreboard players reset @s mob_third_skill_counter