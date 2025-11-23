scoreboard players set @s spell_cost_current 400
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute unless score @s magus_mana_bar < @s spell_cost_current run execute unless entity @e[type=armor_stand,tag=magus_ember_seal_marker] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["magus_ember_seal_marker"]}
execute unless score @s magus_mana_bar < @s spell_cost_current run execute as @e[type=armor_stand,tag=magus_ember_seal_marker] at @s run particle lava ~ ~1 ~ 0.5 0.5 0.5 0.1 40
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard objectives add ember_seal_duration dummy
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard objectives add fire_missile_count dummy
execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text": "[EMBER SEAL]","color": "#bd6437","bold": true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]

execute unless score @s magus_mana_bar < @s spell_cost_current run execute as @e[type=armor_stand,tag=magus_ember_seal_marker,sort=nearest,limit=1] at @s run tag @s remove unstable_spell
execute unless score @s magus_mana_bar < @s spell_cost_current run execute as @e[type=armor_stand,tag=magus_ember_seal_marker] at @s run playsound minecraft:entity.ghast.shoot master @a[distance=..15] ~ ~1 ~ 1 1
execute unless score @s magus_mana_bar < @s spell_cost_current run execute as @e[type=armor_stand,tag=magus_ember_seal_marker] at @s run scoreboard players add @s ember_seal_duration 10
execute unless score @s magus_mana_bar < @s spell_cost_current run execute as @e[type=armor_stand,tag=magus_ember_seal_marker] at @s run setblock ~ ~1 ~ light[level=15] keep
execute unless score @s magus_mana_bar < @s spell_cost_current run schedule function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_marker_burn 1t

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current