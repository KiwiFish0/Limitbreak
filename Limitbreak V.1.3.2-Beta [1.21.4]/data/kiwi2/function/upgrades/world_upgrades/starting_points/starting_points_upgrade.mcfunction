advancement revoke @s only kiwi2:limitbreak_interaction_starting_points

execute if score starting_points world_upgrades matches 5 run title @s actionbar {"bold":true,"color":"red","italic":false,"text":"Upgrade has been maxed!"}
execute if score starting_points world_upgrades matches 5 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0

execute if score starting_points world_upgrades matches 4 if score @s Credits matches ..24 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score starting_points world_upgrades matches 4 if score @s Credits matches ..24 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score starting_points world_upgrades matches 4 if score @s Credits matches 25.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Starting Points - V"}
execute if score starting_points world_upgrades matches 4 if score @s Credits matches 25.. run tellraw @s {"color":"white","italic":false,"text":"Instantly gain 250 Points at the start of a run."}
execute if score starting_points world_upgrades matches 4 if score @s Credits matches 25.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score starting_points world_upgrades matches 4 if score @s Credits matches 25.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score starting_points world_upgrades matches 4 if score @s Credits matches 25.. run schedule function kiwi2:upgrades/world_upgrades/starting_points/starting_points_upgrade_5 1t
execute if score starting_points world_upgrades matches 4 if score @s Credits matches 25.. run scoreboard players remove @s Credits 25

execute if score starting_points world_upgrades matches 3 if score @s Credits matches ..19 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score starting_points world_upgrades matches 3 if score @s Credits matches ..19 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score starting_points world_upgrades matches 3 if score @s Credits matches 20.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Starting Points - IV"}
execute if score starting_points world_upgrades matches 3 if score @s Credits matches 20.. run tellraw @s {"color":"white","italic":false,"text":"Instantly gain 200 Points at the start of a run."}
execute if score starting_points world_upgrades matches 3 if score @s Credits matches 20.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score starting_points world_upgrades matches 3 if score @s Credits matches 20.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score starting_points world_upgrades matches 3 if score @s Credits matches 20.. run schedule function kiwi2:upgrades/world_upgrades/starting_points/starting_points_upgrade_4 1t
execute if score starting_points world_upgrades matches 3 if score @s Credits matches 20.. run scoreboard players remove @s Credits 20

execute if score starting_points world_upgrades matches 2 if score @s Credits matches ..14 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score starting_points world_upgrades matches 2 if score @s Credits matches ..14 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score starting_points world_upgrades matches 2 if score @s Credits matches 15.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Starting Points - III"}
execute if score starting_points world_upgrades matches 2 if score @s Credits matches 15.. run tellraw @s {"color":"white","italic":false,"text":"Instantly gain 150 Points at the start of a run."}
execute if score starting_points world_upgrades matches 2 if score @s Credits matches 15.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score starting_points world_upgrades matches 2 if score @s Credits matches 15.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score starting_points world_upgrades matches 2 if score @s Credits matches 15.. run schedule function kiwi2:upgrades/world_upgrades/starting_points/starting_points_upgrade_3 1t
execute if score starting_points world_upgrades matches 2 if score @s Credits matches 15.. run scoreboard players remove @s Credits 15

execute if score starting_points world_upgrades matches 1 if score @s Credits matches ..9 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score starting_points world_upgrades matches 1 if score @s Credits matches ..9 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score starting_points world_upgrades matches 1 if score @s Credits matches 10.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Starting Points - II"}
execute if score starting_points world_upgrades matches 1 if score @s Credits matches 10.. run tellraw @s {"color":"white","italic":false,"text":"Instantly gain 100 Points at the start of a run."}
execute if score starting_points world_upgrades matches 1 if score @s Credits matches 10.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score starting_points world_upgrades matches 1 if score @s Credits matches 10.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score starting_points world_upgrades matches 1 if score @s Credits matches 10.. run schedule function kiwi2:upgrades/world_upgrades/starting_points/starting_points_upgrade_2 1t
execute if score starting_points world_upgrades matches 1 if score @s Credits matches 10.. run scoreboard players remove @s Credits 10

execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches ..4 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches ..4 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches 5.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Starting Points - I"}
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches 5.. run tellraw @s {"color":"white","italic":false,"text":"Instantly gain 50 Points at the start of a run."}
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches 5.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches 5.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches 5.. run schedule function kiwi2:upgrades/world_upgrades/starting_points/starting_points_upgrade_1 1t
execute unless score starting_points world_upgrades matches 1.. if score @s Credits matches 5.. run scoreboard players remove @s Credits 5