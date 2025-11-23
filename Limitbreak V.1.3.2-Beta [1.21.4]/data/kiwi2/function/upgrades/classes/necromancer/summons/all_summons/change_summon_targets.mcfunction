execute if entity @e[type=silverfish,tag=necromancer_position_marker] run kill @e[type=silverfish,tag=necromancer_position_marker,limit=1,sort=nearest]
execute if score @s necromancer_call_switch matches 0 as @e[tag=necromancer_summon] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/find_enemy_nearest
execute if score @s necromancer_call_switch matches 1 run function kiwi2:upgrades/classes/necromancer/summons/all_summons/find_enemy_nearest_player
execute if score @s necromancer_call_switch matches 2 run function kiwi2:upgrades/classes/necromancer/summons/all_summons/find_enemy_random
execute if score @s necromancer_call_switch matches 3 run function kiwi2:upgrades/classes/necromancer/summons/all_summons/find_player_position
playsound minecraft:block.trial_spawner.ambient_ominous master @a[distance=..12] ~ ~ ~ 1 1
particle soul ~ ~0.1 ~ 0.8 0 0.8 0 15
particle soul_fire_flame ~ ~1 ~ 0.8 0.5 0.8 0 15
advancement revoke @s only kiwi2:necromancer_call_action