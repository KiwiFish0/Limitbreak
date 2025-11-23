execute if entity @e[type=!player,type=!#items_and_non_mobs,tag=!necromancer_summon_check,tag=!necromancer_summon,team=!Player_Glow,distance=..8] run scoreboard players add @s mob_first_skill_counter 1

execute if score @s mob_first_skill_counter matches 200 run tag @s add revenant_growling
execute if score @s mob_first_skill_counter matches 200 run particle minecraft:falling_obsidian_tear ~ ~1.5 ~ 0.5 0.5 0.5 1 25
execute if score @s mob_first_skill_counter matches 200 run playsound minecraft:entity.wolf.growl master @a[distance=..17] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 200 run playsound minecraft:entity.wolf.growl master @a[distance=..17] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 200 run playsound minecraft:entity.zombie.ambient master @a[distance=..17] ~ ~ ~ 1 0.4
execute if score @s mob_first_skill_counter matches 200 as @e[type=!player,type=!#items_and_non_mobs,tag=!necromancer_summon_check,tag=!necromancer_summon,team=!Player_Glow,distance=..8] run damage @s 6 mob_attack by @e[tag=necromancer_summon,tag=revenant_growling,limit=1,sort=nearest]
execute if score @s mob_first_skill_counter matches 200 as @e[type=!player,type=!#items_and_non_mobs,tag=!necromancer_summon_check,tag=!necromancer_summon,team=!Player_Glow,distance=..8] at @s run particle sweep_attack ~ ~1 ~ 0.3 0.5 0.3 1 6
execute if score @s mob_first_skill_counter matches 200 run tag @s remove revenant_growling
execute if score @s mob_first_skill_counter matches 200 run scoreboard players reset @s mob_first_skill_counter