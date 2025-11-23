# Buy Class
execute unless score @s magus_class_bought matches 1.. if score @s Credits matches ..19 run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"Not enough "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute unless score @s magus_class_bought matches 1.. if score @s Credits matches ..19 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 0
execute unless score @s magus_class_bought matches 1.. if score @s Credits matches 20.. run title @s actionbar [{"bold":true,"color":"red","italic":false,"text":"-20 "},{"text": "⌬ Credits","color":"#76BDF8"}]
execute unless score @s magus_class_bought matches 1.. if score @s Credits matches 20.. run tellraw @s [{"color":"white","text": "You have successfully bought the "},{"bold":true,"color":"#df2d2d","italic":false,"text":"[MAGUS]"},{"color":"white","text": " class!"}]
execute unless score @s magus_class_bought matches 1.. if score @s Credits matches 20.. run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2 1
execute unless score @s magus_class_bought matches 1.. if score @s Credits matches 20.. run scoreboard players set @s magus_class_bought 2
execute if score @s magus_class_bought matches 2 if score @s Credits matches 20.. run scoreboard players remove @s Credits 20
execute if score @s magus_class_bought matches 2 run scoreboard players set @s magus_class_bought 1

# Select Class
execute if score @s magus_class_bought matches 1.. if score @s limitbreak_chosen_class matches 5 run tellraw @s [{"bold":true,"color":"#df2d2d","italic":false,"text":"[MAGUS]"},{"color":"red","text": " has been deselected.","bold": false}]
execute if score @s magus_class_bought matches 1.. if score @s limitbreak_chosen_class matches 5 run tag @s add class_choose_toggle
execute if score @s magus_class_bought matches 1.. if score @s limitbreak_chosen_class matches 5 run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score @s magus_class_bought matches 1.. if score @s limitbreak_chosen_class matches 5 run scoreboard players set @s limitbreak_chosen_class 0

execute if score @s magus_class_bought matches 1.. unless score @s limitbreak_chosen_class matches 5 unless entity @s[tag=class_choose_toggle] run tellraw @s [{"bold":true,"color":"#df2d2d","italic":false,"text":"[MAGUS]"},{"color":"green","text": " class has been chosen.","bold": false}]
execute if score @s magus_class_bought matches 1.. unless score @s limitbreak_chosen_class matches 5 unless entity @s[tag=class_choose_toggle] run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score @s magus_class_bought matches 1.. unless score @s limitbreak_chosen_class matches 5 unless entity @s[tag=class_choose_toggle] run scoreboard players set @s limitbreak_chosen_class 5

tag @s remove class_choose_toggle
advancement revoke @s only kiwi2:limitbreak_interaction_magus_class