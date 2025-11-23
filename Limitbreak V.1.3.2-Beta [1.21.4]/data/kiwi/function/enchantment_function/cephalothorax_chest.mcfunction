execute unless entity @s[team=Player_Glow] run team add Player_Glow
execute unless entity @s[team=Player_Glow] run team join Player_Glow @s
execute if entity @e[type=spider,distance=..12,team=!Player_Glow] run team join Player_Glow @e[type=spider,distance=..12,team=!Player_Glow,limit=10]
execute if entity @e[type=cave_spider,distance=..12,team=!Player_Glow] run team join Player_Glow @e[type=cave_spider,distance=..12,team=!Player_Glow,limit=10]
schedule function kiwi:enchantment_function/cephalothorax_remove 200t replace