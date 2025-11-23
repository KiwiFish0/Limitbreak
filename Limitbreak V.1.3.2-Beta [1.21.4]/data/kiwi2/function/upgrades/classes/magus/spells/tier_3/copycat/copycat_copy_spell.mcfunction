execute if entity @e[type=armor_stand,tag=magus_copycat] run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat_copy_spell 1t
scoreboard players add world copycat_particles_tick 1

execute as @e[type=armor_stand,tag=magus_copycat] at @s if score world copycat_particles_tick matches 15 run function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat_particles
execute as @e[type=armor_stand,tag=magus_copycat] at @s if score @s magus_copycat_identifier = @e[tag=magus_casted_spell_tier_1,limit=1] magus_copycat_identifier run function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat_copy_spell_tier_1
execute as @e[type=armor_stand,tag=magus_copycat] at @s if score @s magus_copycat_identifier = @e[tag=magus_casted_spell_tier_2,limit=1] magus_copycat_identifier run function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat_copy_spell_tier_2
execute as @e[type=armor_stand,tag=magus_copycat] at @s if score @s magus_copycat_identifier = @e[tag=magus_casted_spell_tier_3,limit=1] magus_copycat_identifier run function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat_copy_spell_tier_3
execute if score world copycat_particles_tick matches 15.. run scoreboard players reset world copycat_particles_tick