scoreboard players add @s mob_first_skill_counter 1
execute if score @s mob_first_skill_counter matches 500 run tp @s @e[tag=wave_mob,limit=1,sort=nearest]
execute if score @s mob_first_skill_counter matches 500 run effect give @e[type=#inverted_healing_and_harm,distance=..25] instant_damage 1 1 true
execute if score @s mob_first_skill_counter matches 500 at @s run particle heart ~ ~1 ~ 0.5 0.5 0.5 1 10
execute if score @s mob_first_skill_counter matches 500 at @s run playsound minecraft:entity.vex.charge master @a[distance=..35] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 500 run scoreboard players reset @s mob_first_skill_counter