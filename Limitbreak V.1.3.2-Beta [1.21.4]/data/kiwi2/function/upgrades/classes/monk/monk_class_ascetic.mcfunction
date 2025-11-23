execute as @a[scores={limitbreak_chosen_class=7}] at @s run effect give @s weakness 3 255 true
execute as @a[scores={limitbreak_chosen_class=7}] at @s run effect give @s slowness 3 255 true
execute as @a[scores={limitbreak_chosen_class=7}] at @s run title @s actionbar {"text": "You only need your own body.","color": "red"}
execute as @a[scores={limitbreak_chosen_class=7}] at @s run damage @s 5 generic_kill