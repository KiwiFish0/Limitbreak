scoreboard players set @s spell_cost_current 220
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current unless score @s magus_unstable_spell matches 1.. run function kiwi2:upgrades/classes/magus/spells/tier_2/gale
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current
scoreboard players set @s magus_unstable_spell 0