scoreboard players set @s spell_cost_current 150
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning
execute unless score @s magus_mana_bar < @s spell_cost_current run summon shulker_bullet ^ ^1 ^1 {Tags:["magus_shulker_bullet"],Steps:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run summon shulker_bullet ^-2 ^1 ^0.5 {Tags:["magus_shulker_bullet"],Steps:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run summon shulker_bullet ^2 ^1 ^0.5 {Tags:["magus_shulker_bullet"],Steps:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run summon shulker_bullet ^ ^2 ^1 {Tags:["magus_shulker_bullet"],Steps:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run summon shulker_bullet ^-2 ^2 ^0.5 {Tags:["magus_shulker_bullet"],Steps:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run summon shulker_bullet ^2 ^2 ^0.5 {Tags:["magus_shulker_bullet"],Steps:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run playsound minecraft:entity.shulker.shoot master @a[distance=..15] ~ ~ ~ 1 1
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=minecraft:shulker_bullet,tag=magus_shulker_bullet] at @s run data modify entity @s Target set from entity @e[type=!player,type=!#items_and_non_mobs,type=!shulker_bullet,limit=1,sort=random,distance=..20] UUID

execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text": "[LEVITATE]","color": "white","bold": true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current