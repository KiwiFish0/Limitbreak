execute if entity @a[tag=magus_fire_mantle_on] run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/fire_mantle_tick 20t
execute as @a[tag=magus_fire_mantle_on] at @s run scoreboard players set @s magus_fire_mantle_cost 20
execute as @a[tag=magus_fire_mantle_on,tag=!fire_mantle_unstable] at @s run function kiwi2:upgrades/classes/magus/spells/tier_3/fire_mantle_particles
execute as @a[tag=magus_fire_mantle_on,tag=fire_mantle_unstable] at @s run function kiwi2:upgrades/classes/magus/spells/tier_3/fire_mantle_particles_unstable
execute as @a[tag=magus_fire_mantle_on] at @s run scoreboard players operation @s magus_fire_mantle_cost /= @s mana_efficiency
execute as @a[tag=magus_fire_mantle_on] at @s run scoreboard players operation @s magus_mana_bar -= @s magus_fire_mantle_cost
execute as @a[tag=magus_fire_mantle_on] at @s run scoreboard players operation @s magus_total_mana_used -= @s magus_fire_mantle_cost
execute as @a[tag=magus_fire_mantle_on] at @s run title @s actionbar [{"text": "[HEAT MANTLE] ","color": "#df5f24","bold": true},{"score": {"name": "@s","objective": "magus_total_mana_used"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]
