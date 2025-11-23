execute if score passive_points world_upgrades matches 1 run scoreboard players add @a Points 5
execute if score passive_points world_upgrades matches 1 run tellraw @s {"text": "+5 Points", "color": "#fda654"}
execute if score passive_points world_upgrades matches 2 run scoreboard players add @a Points 10
execute if score passive_points world_upgrades matches 2 run tellraw @s {"text": "+10 Points", "color": "#ff9a3b"}
execute if score passive_points world_upgrades matches 3 run scoreboard players add @a Points 15
execute if score passive_points world_upgrades matches 3 run tellraw @s {"text": "+15 Points", "color": "#f48925"}
execute if score passive_points world_upgrades matches 4 run scoreboard players add @a Points 20
execute if score passive_points world_upgrades matches 4 run tellraw @s {"text": "+15 Points", "color": "#e27a18"}

execute if score passive_xp world_upgrades matches 1 run scoreboard players add @a Points 20
execute if score passive_xp world_upgrades matches 1 run tellraw @s {"text": "Gained 20 XP!", "color": "#60e38e"}
execute if score passive_xp world_upgrades matches 2 run scoreboard players add @a Points 30
execute if score passive_xp world_upgrades matches 2 run tellraw @s {"text": "Gained 30 XP!", "color": "#41d776"}
execute if score passive_xp world_upgrades matches 3 run scoreboard players add @a Points 50
execute if score passive_xp world_upgrades matches 3 run tellraw @s {"text": "Gained 50 XP!", "color": "#30bc61"}
execute if score passive_xp world_upgrades matches 4 run scoreboard players add @a Points 80
execute if score passive_xp world_upgrades matches 4 run tellraw @s {"text": "Gained 80 XP!", "color": "#27a754"}