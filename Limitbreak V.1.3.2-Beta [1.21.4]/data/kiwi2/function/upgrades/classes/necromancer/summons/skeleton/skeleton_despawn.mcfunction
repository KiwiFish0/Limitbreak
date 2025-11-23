tag @s add necromancer_call_despawn
tag @s add necromancer_despawn
execute if score @s[predicate=!kiwi3:player_sneak] skeleton_identifier = @n[tag=skeleton,sort=nearest] skeleton_identifier as @n[tag=skeleton,sort=nearest,limit=1] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
scoreboard players operation $temp skeleton_identifier = @s skeleton_identifier
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=skeleton] at @s if score @s skeleton_identifier = $temp skeleton_identifier run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
tag @s remove necromancer_despawn
tag @s remove necromancer_call_despawn
advancement revoke @s only kiwi2:necromancer_bone_charm_despawn