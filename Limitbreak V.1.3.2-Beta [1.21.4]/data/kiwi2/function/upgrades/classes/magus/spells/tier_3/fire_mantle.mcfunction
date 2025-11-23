scoreboard objectives add magus_fire_mantle_cost dummy
scoreboard objectives add magus_total_mana_used dummy
scoreboard players set @s magus_total_mana_used 0
execute if entity @s[tag=!magus_fire_mantle_on] run playsound minecraft:entity.blaze.ambient master @a[distance=..8] ~ ~ ~ 1 0
execute if entity @s[tag=magus_fire_mantle_on] run playsound minecraft:block.fire.extinguish master @a[distance=..8] ~ ~ ~ 1 1
tag @s remove fire_mantle_unstable

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}},tag=!magus_fire_mantle_on] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}},tag=!magus_fire_mantle_on] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}},tag=!magus_fire_mantle_on] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}},tag=!magus_fire_mantle_on] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute if entity @s[tag=magus_fire_mantle_on] run function kiwi2:upgrades/classes/magus/spells/tier_3/fire_mantle_tick