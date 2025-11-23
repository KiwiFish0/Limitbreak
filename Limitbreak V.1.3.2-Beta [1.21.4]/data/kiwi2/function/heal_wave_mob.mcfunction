effect give @e[tag=wave_mob,type=#inverted_healing_and_harm] minecraft:instant_damage 1 50
effect give @e[tag=wave_mob,type=!#inverted_healing_and_harm] minecraft:instant_health 1 50
execute as @e[tag=wave_mob] run data merge entity @s {PersistenceRequired:1b}