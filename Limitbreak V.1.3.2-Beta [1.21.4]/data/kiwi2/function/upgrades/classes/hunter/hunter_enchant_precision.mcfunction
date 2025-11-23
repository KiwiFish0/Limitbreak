execute if entity @a[scores={limitbreak_chosen_class=3},nbt={SelectedItem:{id:"minecraft:bow"}}] as @a[scores={limitbreak_chosen_class=3},nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run enchant @s kiwi:hunters_precision
execute if entity @a[scores={limitbreak_chosen_class=3},nbt={SelectedItem:{id:"minecraft:crossbow"}}] as @a[scores={limitbreak_chosen_class=3},nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run enchant @s kiwi:hunters_precision

execute as @a[tag=hunter_power_shot_active] at @s run function kiwi2:upgrades/classes/hunter/hunter_power_shot_fx