scoreboard players add @s mob_third_skill_counter 1
execute if score @s mob_third_skill_counter matches ..49 run tp @p[gamemode=survival] ^ ^0.15 ^1.5 facing entity @s
damage @p[gamemode=survival] 2.5 kiwi2:undead_knight_slice by @s
execute at @p run particle sweep_attack ~ ~1 ~ 1 1 1 1 10
playsound minecraft:entity.player.attack.sweep master @a[distance=..25] ~ ~ ~ 1 2
execute if score @s mob_third_skill_counter matches 50.. run function kiwi2:custom_mobs_fx/undead_knight_second_skill_end