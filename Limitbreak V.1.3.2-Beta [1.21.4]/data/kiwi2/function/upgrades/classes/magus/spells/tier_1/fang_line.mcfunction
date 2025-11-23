scoreboard players set @s spell_cost_current 120
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar matches ..6 run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute store result storage kiwi:magus_fang_line_storage pos.y double 1 run data get entity @s Pos[1] 1
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^1 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"]}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^2 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:5}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^3 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:10}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^4 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:15}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^5 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:20}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^6 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:25}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^7 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:30}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^8 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:35}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^9 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:40}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^1 ^ ^10 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:45}

execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^1 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"]}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^2 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:5}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^3 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:10}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^4 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:15}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^5 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:20}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^6 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:25}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^7 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:30}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^8 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:35}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^9 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:40}
execute unless score @s magus_mana_bar < @s spell_cost_current positioned ^-1 ^ ^10 run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["magus_fang_line"],NoGravity:1b,Warmup:45}
playsound minecraft:entity.ravager.stunned master @a[distance=..15] ~ ~ ~ 1 0
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s run spreadplayers ~ ~ 1 1 false @s

execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text": "[SNAPJAW]","color": "gray","bold": true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]

execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_30 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:breeze_rod",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_10 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch
execute unless score @s magus_mana_bar < @s spell_cost_current if entity @s[nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{magus_wand:1b}}}}] if predicate kiwi2:chance_random_5 run function kiwi2:upgrades/classes/magus/spells/unstable_spell_branch

execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s run function kiwi2:upgrades/classes/magus/spells/tier_1/fang_line_teleport_y_level with storage kiwi:magus_fang_line_storage pos

execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current

execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s if block ~ ~-1 ~ #replaceable run tp @s ~ ~-1 ~

execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~
execute as @e[type=evoker_fangs,tag=magus_fang_line] at @s unless block ~ ~ ~ #replaceable run tp @s ~ ~1 ~