title @s actionbar {"text": "[ READY ]", "color": "green","bold": true}
playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 1 0.75
scoreboard players reset @s power_shot_arrow_age
tag @s remove hunter_has_shot_power_shot
