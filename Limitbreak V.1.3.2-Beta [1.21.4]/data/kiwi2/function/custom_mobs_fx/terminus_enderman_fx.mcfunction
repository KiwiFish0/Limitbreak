execute unless score @s mob_first_skill_counter matches 200..500 run particle enchant ~ ~1.7 ~ 0.75 1.3 0.75 0.2 4
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1
execute if score @s mob_first_skill_counter matches 200 run data merge entity @s {carriedBlockState:{Name:"minecraft:air"}}
execute if score @s mob_first_skill_counter matches 200 run effect give @s invisibility 15 1 true
execute if score @s mob_first_skill_counter matches 200 run playsound minecraft:entity.illusioner.cast_spell master @a[distance=..25] ~ ~ ~ 1 0.1 1
execute if score @s mob_first_skill_counter matches 200 run particle smoke ~ ~1.7 ~ 0.75 1.3 0.75 0.1 100
execute if score @s mob_first_skill_counter matches 500 run data merge entity @s {carriedBlockState:{Properties:{eye:"true",facing:"north"},Name:"minecraft:end_portal_frame"}}
execute if score @s mob_first_skill_counter matches 500 run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 1000 run playsound minecraft:entity.enderman.death master @a[distance=..30] ~ ~ ~ 1 0
execute if score @s mob_second_skill_counter matches 1000 run playsound minecraft:entity.enderman.scream master @a[distance=..30] ~ ~ ~ 1 0
execute if score @s mob_second_skill_counter matches 1000 run playsound minecraft:entity.ender_dragon.growl master @a[distance=..30] ~ ~ ~ 1 0.3
execute if score @s mob_second_skill_counter matches 1000 run playsound minecraft:entity.fox.screech master @a[distance=..25] ~ ~ ~ 1 0.1 1
execute if score @s mob_second_skill_counter matches 1000 run particle minecraft:reverse_portal ~ ~1 ~ 2 2 2 .5 200
execute if score @s mob_second_skill_counter matches 1000 run effect give @a[distance=..30] levitation 2 10 true
execute if score @s mob_second_skill_counter matches 1000 run effect give @a[distance=..30] darkness 4 10 true
execute if score @s mob_second_skill_counter matches 1000 run effect give @a[distance=..30] nausea 7 10 true
execute if score @s mob_second_skill_counter matches 1000..1040 as @a[distance=..30] at @s run damage @s 2.5 kiwi2:terminus_enderman_crush by @n[type=enderman,tag=terminus_enderman,tag=wave_mob]
execute if score @s mob_second_skill_counter matches 1050 store result score @s mob_second_skill_counter run random value 1..350

execute if score @s mob_third_skill_counter matches 1200 run summon enderman ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob","enderman_summon"],AngerTime:200000}
execute if score @s mob_third_skill_counter matches 1200 run summon enderman ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob","enderman_summon"],AngerTime:200000}
execute if score @s mob_third_skill_counter matches 1200 run summon enderman ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob","enderman_summon"],AngerTime:200000}
execute if score @s mob_third_skill_counter matches 1200 run summon enderman ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob","enderman_summon"],AngerTime:200000}
execute if score @s mob_third_skill_counter matches 1200 run summon enderman ~ ~ ~ {DeathLootTable:"",Tags:["wave_mob","enderman_summon"],AngerTime:200000}
execute if score @s mob_third_skill_counter matches 1205 as @e[type=enderman,tag=enderman_summon,tag=wave_mob] run data modify entity @s AngryAt set from entity @r[gamemode=survival] UUID
execute if score @s mob_third_skill_counter matches 1208 run spreadplayers ~ ~ 2 10 false @e[type=enderman,tag=wave_mob,tag=enderman_summon]
execute if score @s mob_third_skill_counter matches 1210 store result score @s mob_third_skill_counter run random value 1..600