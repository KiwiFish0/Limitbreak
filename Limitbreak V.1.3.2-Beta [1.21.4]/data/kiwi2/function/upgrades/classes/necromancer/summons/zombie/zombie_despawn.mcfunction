tag @s add necromancer_call_despawn
tag @s add necromancer_despawn
execute if score @s[predicate=!kiwi3:player_sneak] zombie_identifier = @n[tag=zombie,sort=nearest] zombie_identifier as @n[tag=zombie,sort=nearest,limit=1] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
scoreboard players operation $temp zombie_identifier = @s zombie_identifier
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=zombie] at @s if score @s zombie_identifier = $temp zombie_identifier run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
tag @s remove necromancer_despawn
tag @s remove necromancer_call_despawn
advancement revoke @s only kiwi2:necromancer_flesh_charm_despawn