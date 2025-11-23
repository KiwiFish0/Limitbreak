advancement revoke @s only kiwi2:limitbreak_interaction_passive_xp

execute if score passive_xp world_upgrades matches 4 run title @s actionbar {"bold":true,"color":"red","italic":false,"text":"Upgrade has been maxed!"}
execute if score passive_xp world_upgrades matches 4 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0

execute if score passive_xp world_upgrades matches 3 if score @s Credits matches ..63 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches ..63 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches 64.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive XP - IV"}
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches 64.. run tellraw @s {"color":"white","italic":false,"text":"Gain 80 XP Points at the end of each day."}
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches 64.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches 64.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches 64.. run schedule function kiwi2:upgrades/world_upgrades/passive_xp_gain/passive_xp_upgrade_4 1t
execute if score passive_xp world_upgrades matches 3 if score @s Credits matches 64.. run scoreboard players remove @s Credits 80

execute if score passive_xp world_upgrades matches 2 if score @s Credits matches ..31 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches ..31 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches 32.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive XP - III"}
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches 32.. run tellraw @s {"color":"white","italic":false,"text":"Gain 50 XP Points at the end of each day."}
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches 32.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches 32.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches 32.. run schedule function kiwi2:upgrades/world_upgrades/passive_xp_gain/passive_xp_upgrade_3 1t
execute if score passive_xp world_upgrades matches 2 if score @s Credits matches 32.. run scoreboard players remove @s Credits 50

execute if score passive_xp world_upgrades matches 1 if score @s Credits matches ..15 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches ..15 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches 16.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive XP - II"}
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches 16.. run tellraw @s {"color":"white","italic":false,"text":"Gain 30 XP Points at the end of each day."}
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches 16.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches 16.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches 16.. run schedule function kiwi2:upgrades/world_upgrades/passive_xp_gain/passive_xp_upgrade_2 1t
execute if score passive_xp world_upgrades matches 1 if score @s Credits matches 16.. run scoreboard players remove @s Credits 16

execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches ..7 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches ..7 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches 8.. run title @s actionbar {"bold":true,"color":"yellow","italic":false,"text":"Passive XP - I"}
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches 8.. run tellraw @s {"color":"white","italic":false,"text":"Gain 20 XP Points at the end of each day."}
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches 8.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches 8.. run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches 8.. run schedule function kiwi2:upgrades/world_upgrades/passive_xp_gain/passive_xp_upgrade_1 1t
execute unless score passive_xp world_upgrades matches 1.. if score @s Credits matches 8.. run scoreboard players remove @s Credits 8