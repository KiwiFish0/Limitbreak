scoreboard players set @s spell_cost_current 500
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
scoreboard objectives add magus_bubble_shield_timer dummy
scoreboard players add @s magus_bubble_shield_timer 200
execute if score @s magus_mana_bar matches ..35 run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning
tag @s remove magus_bubble_shielded_unstable

title @s actionbar [{"text": "[WATER SHIELD]","color": "#b6f9ff","bold": true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current run tag @s add magus_bubble_shielded

execute unless score @s magus_mana_bar < @s spell_cost_current run playsound minecraft:block.bubble_column.whirlpool_inside master @a[distance=..8] ~ ~ ~ 1 0
execute unless score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/tier_1/bubble_shield/animate
execute unless score @s magus_mana_bar < @s spell_cost_current run schedule function kiwi2:upgrades/classes/magus/spells/tier_1/bubble_shield/delete_bubble_shield 200t
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current