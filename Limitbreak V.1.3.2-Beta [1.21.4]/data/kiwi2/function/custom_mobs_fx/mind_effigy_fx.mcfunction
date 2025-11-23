scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s[tag=!mind_effigy_planted] mob_second_skill_counter 1
execute if score @s mob_first_skill_counter matches 20 run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s mob_first_skill_counter matches 20 run scoreboard players reset @s mob_first_skill_counter

execute if entity @e[tag=wave_mob,distance=..5,sort=nearest,tag=!mind_effigy,tag=!mind_effigy_host] unless entity @s[tag=mind_effigy_planted] run tag @e[tag=wave_mob,distance=..5,sort=nearest,tag=!mind_effigy] add mind_effigy_host
execute if entity @e[tag=wave_mob,distance=..5,sort=nearest,tag=!mind_effigy] unless entity @s[tag=mind_effigy_planted] run tag @s add controller_mob
execute if entity @e[tag=wave_mob,distance=..5,sort=nearest,tag=!mind_effigy] unless entity @s[tag=mind_effigy_planted] run tag @s add mind_effigy_planted
execute if entity @e[tag=wave_mob,distance=..5,sort=nearest,tag=mind_effigy_host,tag=!mind_effigy] run ride @s mount @e[tag=wave_mob,distance=..5,sort=nearest,tag=mind_effigy_host,tag=!mind_effigy,limit=1]

execute if score @s mob_second_skill_counter matches 6000 run kill @s

execute at @p[distance=..5] run damage @p 2 minecraft:magic by @s