execute if entity @e[type=armor_stand,tag=cinderstorm_fire_cloak,scores={cinderstorm_fire_cloak_dur=1..400}] run schedule function kiwi:enchantment_function/cinderstorm_rod_fire_cloak_dur 1t
execute at @e[type=armor_stand,tag=cinderstorm_fire_cloak] run damage @e[type=!player,type=!item,type=!shulker_bullet,type=!#impact_projectiles,type=!item,type=!#boat,type=!item_frame,type=!glow_item_frame,type=!painting,limit=1] 2 on_fire
execute at @e[type=armor_stand,tag=cinderstorm_fire_cloak] run damage @e[type=!player,type=!item,type=!shulker_bullet,type=!#impact_projectiles,type=!item,type=!#boat,type=!item_frame,type=!glow_item_frame,type=!painting,limit=1] 2 on_fire
execute as @e[scores={cinderstorm_fire_cloak_dur=1..400}] at @s run scoreboard players remove @s cinderstorm_fire_cloak_dur 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run effect give @a[distance=..8] fire_resistance 1 0
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run effect give @a[distance=..8] resistance 1 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^ ^8 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^1 ^7 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^2 ^6 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^3 ^5 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^4 ^4 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^5 ^3 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^6 ^2 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^7 ^1 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^8 ^ 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^ ^-8 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^1 ^-7 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^2 ^-6 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^3 ^-5 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^4 ^-4 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^5 ^-3 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^6 ^-2 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ^ ^7 ^-1 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle trial_spawner_detection ~ ~3 ~ 0 3 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ~ ~3 ~ 0 3 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^ ^8 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^1 ^7 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^2 ^6 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^3 ^5 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^4 ^4 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^5 ^3 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^6 ^2 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^7 ^1 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^8 ^ 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^ ^-8 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^1 ^-7 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^2 ^-6 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^3 ^-5 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^4 ^-4 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^5 ^-3 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^6 ^-2 0 0 0 0 1
execute as @e[type=armor_stand,tag=cinderstorm_fire_cloak] at @s run particle flame ^ ^7 ^-1 0 0 0 0 1
execute as @e[scores={cinderstorm_fire_cloak_dur=1..400}] at @s if score @s cinderstorm_fire_cloak_dur matches 1 run function kiwi:enchantment_function/cinderstorm_rod_fire_cloak_kill