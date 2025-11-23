effect clear @a saturation
execute as @r run trigger Gather_Point
gamemode survival @a
time set 0
execute as @a at @s run scoreboard players operation @s credit_save_bank = @s Credits
execute as @a at @s run scoreboard players set @s Credits 0
execute as @a at @s run scoreboard objectives setdisplay list Points
scoreboard players set world ongoing_run 1
tellraw @a [{"text": "Remaining "},{"color":"#76BDF8","text": "⌬ Credits"},{"text": " have been put in your bank."}]
clear @a
bossbar set daytime players @a
bossbar set daytime visible true
gamerule doDaylightCycle true
scoreboard players enable @a EndRun
scoreboard players enable @a Gather_Point
execute as @a[scores={limitbreak_chosen_class=1}] at @s run function kiwi2:upgrades/classes/slayer/slayer_class_give
execute as @a[scores={limitbreak_chosen_class=2}] at @s run function kiwi2:upgrades/classes/knight/knight_class_give
execute as @a[scores={limitbreak_chosen_class=3}] at @s run function kiwi2:upgrades/classes/hunter/hunter_class_give
execute as @a[scores={limitbreak_chosen_class=4}] at @s run function kiwi2:upgrades/classes/apothecary/apothecary_class_give
execute as @a[scores={limitbreak_chosen_class=5}] at @s run function kiwi2:upgrades/classes/magus/magus_class_give
execute as @a[scores={limitbreak_chosen_class=6}] at @s run function kiwi2:upgrades/classes/reaper/reaper_class_give
execute as @a[scores={limitbreak_chosen_class=7}] at @s run function kiwi2:upgrades/classes/monk/monk_class_give
execute as @a[scores={limitbreak_chosen_class=8}] at @s run function kiwi2:upgrades/classes/necromancer/necromancer_class_give
recipe give @a kiwi:charged_book
recipe give @a kiwi:colossal_book
recipe give @a kiwi:frostfire_book
recipe give @a kiwi:iron_strengthened_bow
recipe give @a kiwi:diamond_strengthened_bow
recipe give @a kiwi:netherite_strengthened_bow
recipe give @a kiwi:starred_book
recipe give @a kiwi:starred_weapon_book
execute as @r at @s run function kiwi2:place_stronghold_macro with storage kiwi:teleport_storage pos
schedule function kiwi2:end_island/forceload_end_chunks 100t