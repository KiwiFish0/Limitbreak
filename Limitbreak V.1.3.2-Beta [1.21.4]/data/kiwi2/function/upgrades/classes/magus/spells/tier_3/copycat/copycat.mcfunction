scoreboard players set @s spell_cost_current 400
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard objectives add magus_copycat_identifier dummy
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard objectives add copycat_particles_tick dummy
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard objectives add copycat_count dummy
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players set @s copycat_count 0
execute unless score @s magus_mana_bar < @s spell_cost_current run tag @s add magus_casted_copycat

execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_copycat] if score @s magus_copycat_identifier = @a[tag=magus_casted_copycat,limit=1] magus_copycat_identifier run scoreboard players add @a[tag=magus_casted_copycat,limit=1] copycat_count 1
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_copycat] at @s if score @s magus_copycat_identifier = @a[tag=magus_casted_copycat,limit=1] magus_copycat_identifier run scoreboard players add @s magus_copycat_identifier 1

execute unless score @s magus_mana_bar < @s spell_cost_current run tag @s remove magus_casted_copycat
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players add world magus_copycat_identifier 1
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_copycat_identifier = world magus_copycat_identifier
execute unless score @s magus_mana_bar < @s spell_cost_current if score @s copycat_count matches ..1 run summon armor_stand ~ ~ ~ {"Tags":["magus_copycat"],Invulnerable:1b,NoGravity:1b,Marker:1b}
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @e[type=armor_stand,tag=magus_copycat,sort=nearest,limit=1] magus_copycat_identifier = world magus_copycat_identifier
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @e[type=armor_stand,tag=magus_copycat,sort=nearest,limit=1] magus_mana_bar = @s magus_mana_bar
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @e[type=armor_stand,tag=magus_copycat,sort=nearest,limit=1] mana_efficiency = @s mana_efficiency
execute unless score @s magus_mana_bar < @s spell_cost_current run data modify entity @e[type=armor_stand,tag=magus_copycat,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute unless score @s magus_mana_bar < @s spell_cost_current run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat_copy_spell 5t
execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text":"[COPYCAT]","color":"#858585","bold":true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current