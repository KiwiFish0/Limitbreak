execute on target if entity @s[nbt={HurtTime:1s},tag=!gnawer_marked] unless score @s gravemite_gnawer_execute_max_health matches 0.. store result score @s gravemite_gnawer_execute_max_health run attribute @s max_health get
execute on target if entity @s[nbt={HurtTime:1s},tag=!gnawer_marked] run scoreboard players operation @s gravemite_gnawer_execute_max_health /= world LimitbreakValue10
execute on target if entity @s[nbt={HurtTime:1s},tag=!gnawer_marked] run tag @s add gnawer_marked

execute on target if entity @s[nbt={HurtTime:1s},tag=gnawer_marked] store result score @s gravemite_gnawer_execute_current_health run data get entity @s Health

execute on target if entity @s[tag=gnawer_marked,nbt={HurtTime:1s}] if score @s gravemite_gnawer_execute_current_health <= @s gravemite_gnawer_execute_max_health unless entity @s[tag=gravemite_devour_pending] run function kiwi2:upgrades/classes/necromancer/summons/gravemite/gravemite_gnawer_devour
