particle happy_villager ~ ~1 ~ 0.5 0.7 0.5 0.05 1

scoreboard players add @s mob_first_skill_counter 1
execute if score @s mob_first_skill_counter matches 400 run particle heart ~ ~1 ~ 0.5 0.5 0.5 1 10
execute if score @s mob_first_skill_counter matches 400 run playsound minecraft:entity.allay.death master @a[distance=..10] ~ ~ ~ 1 1.5
execute if score @s mob_first_skill_counter matches 400 run effect give @e[tag=wave_mob,type=#inverted_healing_and_harm,distance=..15] minecraft:instant_damage 1 3
execute if score @s mob_first_skill_counter matches 400 run effect give @e[tag=wave_mob,type=!#inverted_healing_and_harm,distance=..15] minecraft:instant_health 1 3
execute if score @s mob_first_skill_counter matches 400 run scoreboard players reset @s mob_first_skill_counter