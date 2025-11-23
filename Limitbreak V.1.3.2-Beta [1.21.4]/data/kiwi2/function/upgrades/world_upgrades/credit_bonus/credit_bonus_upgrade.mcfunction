advancement revoke @s only kiwi2:limitbreak_interaction_credit_bonus

execute if score credit_bonus world_upgrades matches 5 run title @s actionbar {"bold":true,"color":"red","italic":false,"text":"Upgrade has been maxed!"}
execute if score credit_bonus world_upgrades matches 5 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0

execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches ..119 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches ..119 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches 120.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"⌬ Credit Bonus - V"}
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches 120.. run tellraw @s {"color":"white","italic":false,"text":"Gain an additional 25 ⌬ Credits after ending a run."}
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches 120.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches 120.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches 120.. run schedule function kiwi2:upgrades/world_upgrades/credit_bonus/credit_bonus_upgrade_5 1t
execute if score credit_bonus world_upgrades matches 4 if score @s Credits matches 120.. run scoreboard players remove @s Credits 120

execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches ..74 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches ..74 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches 75.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"⌬ Credit Bonus - IV"}
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches 75.. run tellraw @s {"color":"white","italic":false,"text":"Gain an additional 20 ⌬ Credits after ending a run."}
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches 75.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches 75.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches 75.. run schedule function kiwi2:upgrades/world_upgrades/credit_bonus/credit_bonus_upgrade_4 1t
execute if score credit_bonus world_upgrades matches 3 if score @s Credits matches 75.. run scoreboard players remove @s Credits 75

execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches ..39 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches ..39 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches 40.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"⌬ Credit Bonus - III"}
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches 40.. run tellraw @s {"color":"white","italic":false,"text":"Gain an additional 15 ⌬ Credits after ending a run."}
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches 40.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches 40.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches 40.. run schedule function kiwi2:upgrades/world_upgrades/credit_bonus/credit_bonus_upgrade_3 1t
execute if score credit_bonus world_upgrades matches 2 if score @s Credits matches 40.. run scoreboard players remove @s Credits 40

execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches ..19 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches ..19 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches 20.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"⌬ Credit Bonus - II"}
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches 20.. run tellraw @s {"color":"white","italic":false,"text":"Gain an additional 10 ⌬ Credits after ending a run."}
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches 20.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches 20.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches 20.. run schedule function kiwi2:upgrades/world_upgrades/credit_bonus/credit_bonus_upgrade_2 1t
execute if score credit_bonus world_upgrades matches 1 if score @s Credits matches 20.. run scoreboard players remove @s Credits 20

execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches ..9 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches ..9 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches 10.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"⌬ Credit Bonus - I"}
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches 10.. run tellraw @s {"color":"white","italic":false,"text":"Gain an additional 5 ⌬ Credits after ending a run."}
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches 10.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches 10.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches 10.. run schedule function kiwi2:upgrades/world_upgrades/credit_bonus/credit_bonus_upgrade_1 1t
execute unless score credit_bonus world_upgrades matches 1.. if score @s Credits matches 10.. run scoreboard players remove @s Credits 10