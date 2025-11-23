# Homing Commands
execute as @e[type=item_display,tag=magus_homing_spell] at @s if score @s magus_homing_scoreboard matches 1.. run schedule function kiwi2:upgrades/classes/magus/spells/magus_homing_spells_tick 1t
execute as @e[type=item_display,tag=magus_homing_spell,tag=!unstable_spell,tag=!deviate_homing_speed] at @s anchored eyes facing entity @e[type=!#minecraft:items_and_non_mobs,type=!player,tag=!boss_check,distance=..25,sort=nearest,limit=1] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^4 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.8 ~ ~
execute as @e[type=item_display,tag=magus_homing_spell,tag=unstable_spell,tag=!deviate_homing_speed] at @s anchored eyes facing entity @e[type=!#minecraft:items_and_non_mobs,type=!player,tag=!boss_check,distance=..25,sort=random,limit=1] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.8 ~ ~
execute as @e[type=item_display,tag=magus_homing_spell] at @s if score @s magus_homing_scoreboard matches 1.. run scoreboard players remove @s magus_homing_scoreboard 1
execute as @e[type=item_display,tag=magus_homing_spell] at @s if score @s magus_homing_scoreboard matches 0 run kill @s

# Magic Missile
execute as @e[type=item_display,tag=magus_homing_spell,tag=magic_missile,tag=!unstable_spell] at @s run particle dust_color_transition{from_color:[0.0,0.5,0.8],to_color:[0.0,0.5,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 2
execute as @e[type=item_display,tag=magus_homing_spell,tag=magic_missile,tag=unstable_spell] at @s run particle dust_color_transition{from_color:[0.8,0.0,0.0],to_color:[1.0,0.0,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 2
execute as @e[type=item_display,tag=magus_homing_spell,tag=magic_missile] at @s anchored eyes if entity @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..1.8,tag=!boss_check,sort=nearest] run function kiwi2:upgrades/classes/magus/spells/tier_1/magic_missile_damage
execute as @e[type=item_display,tag=magus_homing_spell,tag=magic_missile] at @s unless block ~ ~ ~ #replaceable run function kiwi2:upgrades/classes/magus/spells/tier_1/magic_missile_hit_block

# Fire Missile
execute as @e[type=item_display,tag=magus_homing_spell,tag=fire_missile] at @s anchored eyes facing entity @e[type=!#minecraft:items_and_non_mobs,type=!player,tag=!boss_check,distance=..20,sort=random,limit=1] eyes positioned ^ ^-0.1 ^2 rotated as @s positioned ^ ^ ^4 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~
execute as @e[type=item_display,tag=magus_homing_spell,tag=fire_missile] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 1
execute as @e[type=item_display,tag=magus_homing_spell,tag=fire_missile] at @s anchored eyes if entity @e[type=!#minecraft:items_and_non_mobs,type=!player,tag=!boss_check,distance=..1.8,sort=nearest] run function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal_entity_get_burnt