tag @s remove monk_stillness_on
effect give @s darkness 2 255 true
tag @e[tag=monk_target] remove monk_target
playsound block.glass.break master @a[distance=..12] ~ ~ ~ 1 0
tellraw @s {"text": "Your focus breaks...","color": "red"}