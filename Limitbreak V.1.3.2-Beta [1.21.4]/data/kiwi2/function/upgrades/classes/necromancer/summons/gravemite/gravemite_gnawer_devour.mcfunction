function kiwi2:upgrades/classes/necromancer/summons/gravemite/gravemite_gnawer_devour_fx
data merge entity @s {DeathTime:-190}
tag @s add gravemite_devour_pending
tag @e[type=silverfish,tag=gravemite_gnawer,tag=!gravemite_devour_active,limit=1,sort=nearest] add gravemite_devour_active
execute as @e[type=silverfish,tag=gravemite_devour_active,limit=1,sort=nearest] at @s run attribute @s movement_speed modifier add gravemite_gnawer_devour_speed -99999 add_value
execute as @e[type=silverfish,tag=gravemite_devour_active,limit=1,sort=nearest] at @s run attribute @s knockback_resistance modifier add gravemite_gnawer_devour_kb_resist 99999 add_value
execute as @e[type=silverfish,tag=gravemite_devour_active,limit=1,sort=nearest] at @s run tp @e[tag=gravemite_devour_pending,limit=1,sort=nearest] @s
execute as @e[type=silverfish,tag=gravemite_devour_active,limit=1,sort=nearest] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=silverfish,tag=gravemite_devour_active,limit=1,sort=nearest] at @s run scoreboard players set @s gravemite_gnawer_devour_timer 200
schedule function kiwi2:upgrades/classes/necromancer/summons/gravemite/gravemite_gnawer_devour_ongoing 1t
kill @s