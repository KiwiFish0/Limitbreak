execute if entity @a[scores={magus_apotheosis_timer=1..}] run schedule function kiwi2:upgrades/classes/magus/magus_class_ability_remove 1t
execute as @a[scores={magus_apotheosis_timer=0}] at @s run function kiwi2:points/magus_mana_upgrades
tellraw @a[scores={magus_apotheosis_timer=0}] {"text": "The surrounding mana disperses...","color": "blue"}
execute as @a[scores={magus_apotheosis_timer=0}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..48] ~ ~ ~ 10 1.5
execute as @a[scores={magus_apotheosis_timer=1..}] at @s run scoreboard players remove @s magus_apotheosis_timer 1