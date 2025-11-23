scoreboard players set @s spell_cost_current 850
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning
kill @e[type=armor_stand,tag=magus_ice_arrows_marker,limit=1,sort=nearest,distance=..101]
tag @s remove ice_arrows_unstable

execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard objectives add magus_ice_arrows_duration dummy
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players add @s magus_ice_arrows_duration 200
execute unless score @s magus_mana_bar < @s spell_cost_current run playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..35] ~ ~ ~ 10000 2
execute unless score @s magus_mana_bar < @s spell_cost_current run summon armor_stand ^ ^ ^100 {"Marker":1b,"Invisible":1b,Invulnerable:1b,"Tags":["magus_ice_arrows_marker"]}
execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text":"[ICE BLITZ]","color":"#4aebf0","bold":true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/tier_3/ice_arrows_summons
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current