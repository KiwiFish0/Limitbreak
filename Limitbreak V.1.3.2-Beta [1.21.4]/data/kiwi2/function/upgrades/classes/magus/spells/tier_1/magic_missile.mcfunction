scoreboard players set @s spell_cost_current 100
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute unless score @s magus_mana_bar < @s spell_cost_current run summon item_display ^ ^1.5 ^1 {transformation:{left_rotation:[1f,0f,1f,0f],right_rotation:[-1.25f,-0.5f,-0f,-0f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},item:{id:"minecraft:echo_shard",count:1},Tags:["magus_homing_spell","magic_missile","magic_missile_init"],teleport_duration:1}
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players set @e[type=item_display,sort=nearest,tag=magic_missile_init,limit=1] magus_homing_scoreboard 200
execute unless score @s magus_mana_bar < @s spell_cost_current run tag @e[type=item_display,sort=nearest,tag=magic_missile_init,limit=1] remove magic_missile_init

execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text": "[MAGIC MISSILE]","color": "#59c8f7","bold": true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current run playsound minecraft:block.trial_spawner.spawn_item master @a[distance=..12] ~ ~ ~ 1 1
execute unless score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/magus_homing_spells_tick

execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current