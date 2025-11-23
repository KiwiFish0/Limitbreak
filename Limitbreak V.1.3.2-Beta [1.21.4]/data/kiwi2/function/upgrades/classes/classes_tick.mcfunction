# [HUNTER] Precision Checks
execute if entity @a[scores={limitbreak_chosen_class=3}] run function kiwi2:upgrades/classes/hunter/hunter_enchant_precision

# [MONK] Abstinence
execute as @a[scores={limitbreak_chosen_class=7}] at @s if predicate kiwi2:holding_weapon_mainhand run function kiwi2:upgrades/classes/monk/monk_class_ascetic
execute as @a[scores={limitbreak_chosen_class=7}] at @s if predicate kiwi2:holding_weapon_offhand run function kiwi2:upgrades/classes/monk/monk_class_ascetic
execute as @a[scores={limitbreak_chosen_class=7}] at @s unless predicate kiwi2:wearing_any_armor run function kiwi2:upgrades/classes/monk/monk_class_ascetic

# [NECROMANCER] Soul Reap
execute as @a[scores={limitbreak_chosen_class=8}] at @s if score @s necromancer_soul_reap matches 1.. run function kiwi2:upgrades/classes/necromancer/necromancer_soul_bar_update
execute as @a[scores={limitbreak_chosen_class=8}] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/summons_tick