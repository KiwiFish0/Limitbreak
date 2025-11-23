execute as @a[scores={limitbreak_chosen_class=1}] if score @s class_ability_scoreboard matches 0 at @s run tp @s @e[type=armor_stand,tag=slayer_teleport_point,limit=1,scores={class_ability_scoreboard=1}]
execute as @a[scores={limitbreak_chosen_class=1}] if score @s class_ability_scoreboard matches 0 at @s run playsound minecraft:entity.breeze.idle_ground master @s ~ ~ ~ 1 1.2
execute as @a[scores={limitbreak_chosen_class=1}] if score @s class_ability_scoreboard matches 0 at @s run playsound minecraft:entity.breeze.shoot master @s ~ ~ ~ 1 1.2
execute as @a[scores={limitbreak_chosen_class=1}] if score @s class_ability_scoreboard matches 0 at @s run particle minecraft:dust_plume ^ ^1 ^0.5 0.3 0.5 0.3 0.1 100 force @a[distance=..20]
execute as @a[scores={limitbreak_chosen_class=1}] if score @s class_ability_scoreboard matches 0 at @s run effect give @s slowness 1 4 true
execute as @a[scores={limitbreak_chosen_class=1}] if score @s class_ability_scoreboard matches 0 at @s run scoreboard players reset @s class_ability_scoreboard
kill @e[type=armor_stand,tag=slayer_teleport_point,limit=1,sort=nearest,scores={class_ability_scoreboard=1}]