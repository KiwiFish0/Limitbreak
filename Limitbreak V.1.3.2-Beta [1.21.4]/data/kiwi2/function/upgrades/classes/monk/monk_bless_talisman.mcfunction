execute if score @s limitbreak_chosen_class matches 7 if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{leather_talisman:1b}}}}] run loot give @s loot kiwi2:entities/monk_talismans/leather_talisman
execute if score @s limitbreak_chosen_class matches 7 if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{iron_talisman:1b}}}}] run loot give @s loot kiwi2:entities/monk_talismans/iron_talisman
execute if score @s limitbreak_chosen_class matches 7 if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{gold_talisman:1b}}}}] run loot give @s loot kiwi2:entities/monk_talismans/gold_talisman
execute if score @s limitbreak_chosen_class matches 7 if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{diamond_talisman:1b}}}}] run loot give @s loot kiwi2:entities/monk_talismans/diamond_talisman
execute if score @s limitbreak_chosen_class matches 7 if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block",components:{"minecraft:custom_data":{netherite_talisman:1b}}}}] run loot give @s loot kiwi2:entities/monk_talismans/netherite_talisman
particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0 50
particle enchant ~ ~1 ~ 1 1 1 0 150
execute unless score @s limitbreak_chosen_class matches 7 run tellraw @s {"text": "The talisman senses your affinity and breaks apart...","color": "red"}
execute unless score @s limitbreak_chosen_class matches 7 run playsound item.wolf_armor.break master @a[distance=..24] ~ ~ ~ 1 1
advancement revoke @s only kiwi2:monk_bless_talisman