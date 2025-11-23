execute if entity @e[type=armor_stand,tag=magus_ember_seal_marker,scores={ember_seal_duration=1..}] run schedule function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_marker_burn 20t
execute as @e[type=armor_stand,tag=magus_ember_seal_marker,scores={ember_seal_duration=1..}] at @s run function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_fire_missile
execute as @e[type=armor_stand,tag=magus_ember_seal_marker,tag=!unstable_spell,scores={ember_seal_duration=2..}] at @s run function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_particles
execute as @e[type=armor_stand,tag=magus_ember_seal_marker,tag=unstable_spell,scores={ember_seal_duration=2..}] at @s run function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_particles_unstable
execute as @e[type=armor_stand,tag=magus_ember_seal_marker,tag=!unstable_spell,scores={ember_seal_duration=1..}] at @s run scoreboard players remove @s ember_seal_duration 1
execute as @e[type=armor_stand,tag=magus_ember_seal_marker,tag=unstable_spell,scores={ember_seal_duration=1..}] at @s run scoreboard players remove @s ember_seal_duration 2
execute store result score world fire_missile_count run execute if entity @e[type=item_display,tag=fire_missile]
execute as @e[type=armor_stand,tag=magus_ember_seal_marker,scores={ember_seal_duration=0}] at @s run function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_end