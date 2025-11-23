schedule function kiwi2:upgrades/classes/magus/magus_mana_bar_update 20t replace
execute as @a[scores={limitbreak_chosen_class=5}] unless score @s magus_mana_bar >= @s magus_mana_bar_max run scoreboard players operation @s magus_mana_bar += @s magus_mana_regen
execute as @a[scores={limitbreak_chosen_class=5}] if score @s magus_mana_bar > @s magus_mana_bar_max run scoreboard players operation @s magus_mana_bar = @s magus_mana_bar_max
execute as @a[scores={limitbreak_chosen_class=5}] at @s if predicate kiwi2:holding_weapon_mainhand run function kiwi2:upgrades/classes/magus/magus_weapon_warning
execute as @a[scores={limitbreak_chosen_class=5}] at @s if predicate kiwi2:holding_weapon_offhand run function kiwi2:upgrades/classes/magus/magus_weapon_warning

execute if entity @a[scores={magus_count=1}] as @a[scores={magus_count=1}] store result bossbar mana_bar max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=2}] as @a[scores={magus_count=2}] store result bossbar mana_bar2 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=3}] as @a[scores={magus_count=3}] store result bossbar mana_bar3 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=4}] as @a[scores={magus_count=4}] store result bossbar mana_bar4 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=5}] as @a[scores={magus_count=5}] store result bossbar mana_bar5 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=6}] as @a[scores={magus_count=6}] store result bossbar mana_bar6 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=7}] as @a[scores={magus_count=7}] store result bossbar mana_bar7 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=8}] as @a[scores={magus_count=8}] store result bossbar mana_bar8 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=9}] as @a[scores={magus_count=9}] store result bossbar mana_bar9 max run scoreboard players get @s magus_mana_bar_max
execute if entity @a[scores={magus_count=10}] as @a[scores={magus_count=10}] store result bossbar mana_bar10 max run scoreboard players get @s magus_mana_bar_max

execute if entity @a[scores={magus_count=1}] as @a[scores={magus_count=1}] store result bossbar mana_bar value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=2}] as @a[scores={magus_count=2}] store result bossbar mana_bar2 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=3}] as @a[scores={magus_count=3}] store result bossbar mana_bar3 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=4}] as @a[scores={magus_count=4}] store result bossbar mana_bar4 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=5}] as @a[scores={magus_count=5}] store result bossbar mana_bar5 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=6}] as @a[scores={magus_count=6}] store result bossbar mana_bar6 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=7}] as @a[scores={magus_count=7}] store result bossbar mana_bar7 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=8}] as @a[scores={magus_count=8}] store result bossbar mana_bar8 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=9}] as @a[scores={magus_count=9}] store result bossbar mana_bar9 value run scoreboard players get @s magus_mana_bar
execute if entity @a[scores={magus_count=10}] as @a[scores={magus_count=10}] store result bossbar mana_bar10 value run scoreboard players get @s magus_mana_bar