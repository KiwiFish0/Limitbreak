execute unless entity @s[team=Player_Glow] run team add Player_Glow
execute unless entity @s[team=Player_Glow] run team join Player_Glow @s
scoreboard objectives add cephalothorax_night_vision_timer dummy
scoreboard players add @s cephalothorax_night_vision_timer 1
execute if entity @e[type=spider,distance=..12,team=!Player_Glow] run team join Player_Glow @e[type=spider,distance=..12,team=!Player_Glow,limit=10]
execute if entity @e[type=cave_spider,distance=..12,team=!Player_Glow] run team join Player_Glow @e[type=cave_spider,distance=..12,team=!Player_Glow,limit=10]
execute if score @s cephalothorax_night_vision_timer matches 1 run effect give @s night_vision 15 1 true
execute if score @s cephalothorax_night_vision_timer matches 90 run scoreboard players reset @s cephalothorax_night_vision_timer
schedule function kiwi:enchantment_function/cephalothorax_remove 200t replace