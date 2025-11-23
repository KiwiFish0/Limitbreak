schedule function kiwi2:upgrades/classes/magus/spells/tier_1/meditate_tick 20t
execute as @a[tag=magus_meditating] at @s run scoreboard players set @s magus_meditate_mana_regen 7
execute as @a[tag=magus_meditating] at @s run effect give @s darkness infinite 255 true
execute as @a[tag=magus_meditating] at @s run attribute @s movement_speed base set 0
execute as @a[tag=magus_meditating] at @s run attribute @s jump_strength base set 0

execute as @a[tag=magus_meditating] at @s run scoreboard players operation @s magus_meditate_mana_regen *= @s mana_efficiency
execute as @a[tag=magus_meditating] at @s run scoreboard players operation @s magus_meditate_mana_regen /= world LimitbreakValue10
execute as @a[tag=magus_meditating] at @s run scoreboard players operation @s magus_meditate_mana_regen -= world LimitbreakValue5
execute as @a[tag=magus_meditating] at @s run scoreboard players operation @s magus_mana_bar += @s magus_meditate_mana_regen
execute as @a[tag=magus_meditating] at @s run scoreboard players operation @s magus_total_mana_restored += @s magus_meditate_mana_regen

execute as @a[tag=magus_meditating] at @s run title @s actionbar [{"text": "[MEDITATE]","color": "#8899c1","bold": true},{"text": " +","bold": false,"color": "green"},{"score": {"name": "@s","objective": "magus_total_mana_restored"},"bold": false,"color": "green"},{"text": " Mana","bold": false,"color": "green"}]
