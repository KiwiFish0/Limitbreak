particle spore_blossom_air ~ ~1 ~ 0.25 0.5 0.25 1 50
particle infested ~ ~1 ~ 0.25 0.5 0.25 1 25
execute as @e[distance=..3,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame] at @s run damage @s 2 player_attack by @p
execute as @e[distance=..3,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame,type=!#inverted_healing_and_harm] at @s run effect give @s poison 10 2 true
execute as @e[distance=..3,type=#inverted_healing_and_harm] at @s run effect give @s wither 10 2 true
execute at @e[distance=..2,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame,limit=3] run particle sweep_attack ~ ~1 ~ 0.25 0.5 0.25 2 1
playsound minecraft:block.fire.extinguish master @a[distance=..5] ~ ~ ~ 0.3 1.5
playsound minecraft:entity.player.attack.sweep master @a[distance=..5] ~ ~ ~ 0.5 0.5