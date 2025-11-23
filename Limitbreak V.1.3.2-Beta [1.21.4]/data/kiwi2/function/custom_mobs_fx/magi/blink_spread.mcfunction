spreadplayers ~ ~ 2 10 false @s
particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0 80 normal
particle dust_color_transition{from_color:[0.980,0.690,1.000],scale:1.5,to_color:[0.498,0.173,0.749]} ~ ~1 ~ 0.3 0.6 0.3 1 80 normal
playsound minecraft:entity.enderman.teleport master @a[distance=..45] ~ ~ ~ 10 0

execute store result score @s mob_fourth_skill_counter run random value 0..1
execute if score @s mob_fourth_skill_counter matches 1 run tp @s ~ ~5 ~ facing entity @p
execute if score @s mob_fourth_skill_counter matches 1 run scoreboard players add @s mob_fifth_skill_counter 1
execute if score @s mob_fourth_skill_counter matches 1 if score @s mob_fifth_skill_counter matches 3 run function kiwi2:custom_mobs_fx/magi/ice_arrows
execute if score @s mob_fourth_skill_counter matches 1 if score @s mob_fifth_skill_counter matches 3.. run scoreboard players reset @s mob_fifth_skill_counter