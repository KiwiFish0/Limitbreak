schedule function kiwi:enchantment_function/cephalothorax_remove 200t
execute if entity @e[type=spider,team=Player_Glow] run team leave @e[type=spider,team=Player_Glow]
execute if entity @e[type=cave_spider,team=Player_Glow] run team leave @e[type=cave_spider,team=Player_Glow]
execute if entity @a[team=Player_Glow] run team leave @a[team=Player_Glow]
# Something to note: might mess with spider entities that use other teams.