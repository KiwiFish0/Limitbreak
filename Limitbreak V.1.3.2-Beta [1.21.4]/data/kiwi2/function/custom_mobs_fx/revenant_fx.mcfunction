scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_fifth_skill_counter 1
execute if score @s mob_first_skill_counter matches 200 run particle minecraft:poof ^ ^ ^-0.5 0.5 0.5 0.5 0.25 25
execute if score @s mob_first_skill_counter matches 200 run effect give @s speed 2 5 true
execute if score @s mob_first_skill_counter matches 200 store result score @s mob_first_skill_counter run random value 1..20

execute if score @s mob_second_skill_counter matches 475.. if entity @p[distance=..2] run function kiwi2:custom_mobs_fx/revenant_tackle

execute if score @s mob_fifth_skill_counter matches 350 run particle minecraft:falling_obsidian_tear ~ ~1.5 ~ 0.5 0.5 0.5 1 25
execute if score @s mob_fifth_skill_counter matches 350 run playsound minecraft:entity.wolf.growl master @a[distance=..17] ~ ~ ~ 1 0.75
execute if score @s mob_fifth_skill_counter matches 350 run playsound minecraft:entity.wolf.growl master @a[distance=..17] ~ ~ ~ 1 0.75
execute if score @s mob_fifth_skill_counter matches 350 run playsound minecraft:entity.zombie.ambient master @a[distance=..17] ~ ~ ~ 1 0.4
execute if score @s mob_fifth_skill_counter matches 350 as @a[distance=..15] run damage @s 1 mob_attack by @e[type=zombie,tag=revenant,limit=1]
execute if score @s mob_fifth_skill_counter matches 350 store result score @s mob_fifth_skill_counter run random value 1..50