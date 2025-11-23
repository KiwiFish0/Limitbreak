tag @s add necromancer_call_despawn
tag @s add necromancer_despawn
execute if score @s[predicate=!kiwi3:player_sneak] wither_skeleton_identifier = @n[tag=wither_skeleton,sort=nearest] wither_skeleton_identifier as @n[tag=wither_skeleton,sort=nearest,limit=1] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
scoreboard players operation $temp wither_skeleton_identifier = @s wither_skeleton_identifier
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=wither_skeleton] at @s if score @s wither_skeleton_identifier = $temp wither_skeleton_identifier run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
tag @s remove necromancer_despawn
tag @s remove necromancer_call_despawn