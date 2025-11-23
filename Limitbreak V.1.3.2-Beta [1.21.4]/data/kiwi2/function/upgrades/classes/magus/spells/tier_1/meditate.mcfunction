scoreboard objectives add magus_meditate_mana_regen dummy
scoreboard objectives add magus_total_mana_restored dummy
scoreboard players set @s magus_total_mana_restored 0
playsound minecraft:entity.breeze.inhale master @a[distance=..8] ~ ~ ~ 1 2

execute if entity @s[tag=magus_meditating] run tag @s add magus_was_meditating
tag @s[tag=magus_was_meditating] remove magus_meditating
tag @s[tag=!magus_was_meditating] add magus_meditating
effect clear @s[tag=magus_was_meditating] darkness
attribute @s[tag=magus_was_meditating] movement_speed base reset
attribute @s[tag=magus_was_meditating] jump_strength base reset
tag @s remove magus_was_meditating

execute if entity @s[tag=magus_meditating] run function kiwi2:upgrades/classes/magus/spells/tier_1/meditate_tick
