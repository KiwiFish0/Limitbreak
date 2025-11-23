execute store result bossbar boss_health value run data get entity @s Health
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_fourth_skill_counter 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ender_dragon.hurt master @a[distance=..10] ~ ~ ~ 1 2
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.allay.hurt master @a[distance=..10] ~ ~ ~ .5 .3
execute if entity @s[nbt={HurtTime:10s}] run particle trial_spawner_detection_ominous ~ ~1 ~ 0.25 0.5 0.25 0.1 5
execute if score @s mob_first_skill_counter matches 200 if entity @p[distance=5..,gamemode=survival] run effect give @s speed 5 2 true
execute if score @s mob_first_skill_counter matches 200 if entity @p[distance=5..,gamemode=survival] run playsound minecraft:entity.allay.death master @a[distance=..25] ~ ~ ~ 1 0.1
execute if score @s mob_first_skill_counter matches 200 if entity @p[distance=5..,gamemode=survival] run particle soul ~ ~0.5 ~ 0.25 0.5 0.25 0.1 20
execute if score @s mob_first_skill_counter matches 200.. run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 400.. if entity @p[distance=..3,gamemode=survival] run function kiwi2:custom_mobs_fx/undead_knight_second_skill

execute if score @s mob_fourth_skill_counter matches 750 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["undead_knight_warp"]}
execute if score @s mob_fourth_skill_counter matches 760 run tag @r[gamemode=survival,limit=1] add undead_knight_switch_player
execute if score @s mob_fourth_skill_counter matches 760 run particle soul_fire_flame ~ ~1 ~ 0.25 0.5 0.25 0.1 50
execute if score @s mob_fourth_skill_counter matches 760 run playsound minecraft:entity.breeze.wind_burst master @a[distance=..50] ~ ~ ~ 1 0.1 1
execute if score @s mob_fourth_skill_counter matches 760 run tp @s @r[gamemode=survival,limit=1,tag=undead_knight_switch_player]
execute if score @s mob_fourth_skill_counter matches 760 run tp @r[gamemode=survival,limit=1,tag=undead_knight_switch_player] @e[limit=1,tag=undead_knight_warp,type=armor_stand]
execute if score @s mob_fourth_skill_counter matches 760 run data merge entity @s {attributes:[{id:"minecraft:follow_range",base:5.0}]}
execute if score @s mob_fourth_skill_counter matches 770 run data merge entity @s {attributes:[{id:"minecraft:follow_range",base:100.0}]}
execute if score @s mob_fourth_skill_counter matches 800 run tag @a remove undead_knight_switch_player
execute if score @s mob_fourth_skill_counter matches 800 run kill @e[type=armor_stand,tag=undead_knight_warp]
execute if score @s mob_fourth_skill_counter matches 800 store result score @s mob_fourth_skill_counter run random value 1..100