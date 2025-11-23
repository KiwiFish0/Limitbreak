scoreboard players set @s spell_cost_current 500
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute unless score @s magus_mana_bar < @s spell_cost_current run summon armor_stand ^ ^ ^8 {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["magus_lightning_bolt_marker"]}
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s run spreadplayers ~ ~ 0 1 false @s
execute unless score @s magus_mana_bar < @s spell_cost_current run playsound minecraft:block.trial_spawner.about_to_spawn_item master @a[distance=..12] ~ ~ ~ 1 2
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s if block ~ ~-1 ~ #magus_lightning_spread run tp @s ~ ~-1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text": "[THUNDERCLAP]","color": "#f4cb38","bold": true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless block ~ ~ ~ #magus_lightning_spread run tp @s ~ ~1 ~

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s run tag @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..10,sort=nearest,limit=1] add magus_lightning_target
execute unless score @s magus_mana_bar < @s spell_cost_current as @e[type=armor_stand,tag=magus_lightning_bolt_marker] at @s unless entity @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..10,sort=nearest] run tag @s add magus_lightning_bolt_no_mobs_nearby
execute unless score @s magus_mana_bar < @s spell_cost_current run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/thunderclap_before_execute 10t append
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @e[type=armor_stand,tag=magus_lightning_bolt_marker,tag=unstable_spell] run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/thunderclap_execute 30t append
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @e[type=armor_stand,tag=magus_lightning_bolt_marker,tag=unstable_spell] run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/thunderclap_execute_unstable 30t append
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current
