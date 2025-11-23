function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_particles_end
execute as @e[type=item_display,tag=fire_missile] at @s run particle smoke ~ ~ ~ 0.2 0.2 0.2 0 10
kill @e[type=item_display,tag=fire_missile]
setblock ~ ~1 ~ air
scoreboard players reset world fire_missile_count
kill @s