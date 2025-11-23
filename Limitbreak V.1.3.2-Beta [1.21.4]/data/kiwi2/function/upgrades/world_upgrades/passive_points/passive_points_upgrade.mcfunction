advancement revoke @s only kiwi2:limitbreak_interaction_passive_points

execute if score passive_points world_upgrades matches 4 run title @s actionbar {"bold":true,"color":"red","italic":false,"text":"Upgrade has been maxed!"}
execute if score passive_points world_upgrades matches 4 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0

execute if score passive_points world_upgrades matches 3 if score @s Credits matches ..79 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score passive_points world_upgrades matches 3 if score @s Credits matches ..79 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score passive_points world_upgrades matches 3 if score @s Credits matches 80.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive Points - IV"}
execute if score passive_points world_upgrades matches 3 if score @s Credits matches 80.. run tellraw @s {"color":"white","italic":false,"text":"Gain 20 Points at the end of each day."}
execute if score passive_points world_upgrades matches 3 if score @s Credits matches 80.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score passive_points world_upgrades matches 3 if score @s Credits matches 80.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score passive_points world_upgrades matches 3 if score @s Credits matches 80.. run schedule function kiwi2:upgrades/world_upgrades/passive_points/passive_points_upgrade_4 1t
execute if score passive_points world_upgrades matches 3 if score @s Credits matches 80.. run scoreboard players remove @s Credits 80

execute if score passive_points world_upgrades matches 2 if score @s Credits matches ..49 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score passive_points world_upgrades matches 2 if score @s Credits matches ..49 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score passive_points world_upgrades matches 2 if score @s Credits matches 50.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive Points - III"}
execute if score passive_points world_upgrades matches 2 if score @s Credits matches 50.. run tellraw @s {"color":"white","italic":false,"text":"Gain 15 Points at the end of each day."}
execute if score passive_points world_upgrades matches 2 if score @s Credits matches 50.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score passive_points world_upgrades matches 2 if score @s Credits matches 50.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score passive_points world_upgrades matches 2 if score @s Credits matches 50.. run schedule function kiwi2:upgrades/world_upgrades/passive_points/passive_points_upgrade_3 1t
execute if score passive_points world_upgrades matches 2 if score @s Credits matches 50.. run scoreboard players remove @s Credits 50

execute if score passive_points world_upgrades matches 1 if score @s Credits matches ..39 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score passive_points world_upgrades matches 1 if score @s Credits matches ..39 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score passive_points world_upgrades matches 1 if score @s Credits matches 30.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive Points - II"}
execute if score passive_points world_upgrades matches 1 if score @s Credits matches 30.. run tellraw @s {"color":"white","italic":false,"text":"Gain 10 Points at the end of each day."}
execute if score passive_points world_upgrades matches 1 if score @s Credits matches 30.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score passive_points world_upgrades matches 1 if score @s Credits matches 30.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score passive_points world_upgrades matches 1 if score @s Credits matches 30.. run schedule function kiwi2:upgrades/world_upgrades/passive_points/passive_points_upgrade_2 1t
execute if score passive_points world_upgrades matches 1 if score @s Credits matches 30.. run scoreboard players remove @s Credits 30

execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches ..19 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches ..19 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches 20.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive Points - I"}
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches 20.. run tellraw @s {"color":"white","italic":false,"text":"Gain 5 Points at the end of each day."}
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches 20.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches 20.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches 20.. run schedule function kiwi2:upgrades/world_upgrades/passive_points/passive_points_upgrade_1 1t
execute unless score passive_points world_upgrades matches 1.. if score @s Credits matches 20.. run scoreboard players remove @s Credits 20