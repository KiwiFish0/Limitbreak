tag @s add necromancer_call_despawn
tag @s add necromancer_despawn_2
execute if score @s[predicate=!kiwi3:player_sneak] creeper_identifier = @n[type=creeper,tag=creeper,sort=nearest] creeper_identifier as @n[type=creeper,tag=creeper,sort=nearest,limit=1] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
scoreboard players operation $temp creeper_identifier = @s creeper_identifier
execute if entity @s[predicate=kiwi3:player_sneak] as @e[type=creeper,tag=creeper] at @s if score @s creeper_identifier = $temp creeper_identifier run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
tag @s remove necromancer_despawn_2
tag @s remove necromancer_call_despawn
advancement revoke @s only kiwi2:necromancer_gunpowder_charm_despawn