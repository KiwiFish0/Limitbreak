scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1

execute if block ~ ~-1 ~ #air run particle white_smoke ~ ~ ~ 0.5 0.5 0.5 0 4
execute if entity @s[nbt={HurtTime:10s}] if predicate kiwi2:chance_random_30 run function kiwi2:custom_mobs_fx/magi/gale
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.player.hurt hostile @a[distance=..30] ~ ~ ~ 5 1
execute if score @s mob_first_skill_counter matches 25 store result score @s enemy_magus_spell_pick run random value 1..2

execute if score @s mob_first_skill_counter matches 100 if score @s enemy_magus_spell_pick matches 1 run function kiwi2:custom_mobs_fx/magi/magic_missile_barrage
execute if score @s mob_first_skill_counter matches 80..100 if score @s enemy_magus_spell_pick matches 2 run tp @s ~ ~ ~ facing entity @p[gamemode=survival]
execute if score @s mob_first_skill_counter matches 80..100 if score @s enemy_magus_spell_pick matches 2 run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.1 3
execute if score @s mob_first_skill_counter matches 100 if score @s enemy_magus_spell_pick matches 2 run function kiwi2:custom_mobs_fx/magi/fireball
execute if score @s mob_first_skill_counter matches 100.. store result score @s mob_first_skill_counter run random value 1..25

execute if score @s mob_second_skill_counter matches 250 run function kiwi2:custom_mobs_fx/magi/blink_spread
execute if score @s mob_second_skill_counter matches 250.. store result score @s mob_second_skill_counter run random value 1..50

execute if score @s mob_third_skill_counter matches 25 run tp @s ~ ~ ~ facing entity @p[gamemode=survival]
execute if score @s mob_third_skill_counter matches 25.. run scoreboard players reset @s mob_third_skill_counter