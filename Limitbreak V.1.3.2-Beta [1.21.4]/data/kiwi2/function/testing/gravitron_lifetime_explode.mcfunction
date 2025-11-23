particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute at @s run tag @e[type=armor_stand,tag=gravitron_orb_player] add gravitron_new
execute at @s run scoreboard players set @e[type=armor_stand,tag=gravitron_orb_player,sort=nearest,tag=gravitron_new] gravitron_lifetime 25
schedule function kiwi:enchantment_function/gravitron_lifetime 1t