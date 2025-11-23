tag @s add necromancer_call_despawn
tag @s add necromancer_despawn_3
execute if score @s[predicate=!kiwi3:player_sneak] gravemite_identifier = @n[type=silverfish,tag=gravemite,sort=nearest] gravemite_identifier as @n[type=silverfish,tag=gravemite,sort=nearest,limit=1] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
scoreboard players operation $temp gravemite_identifier = @s gravemite_identifier
execute if entity @s[predicate=kiwi3:player_sneak] as @e[type=silverfish,tag=gravemite] at @s if score @s gravemite_identifier = $temp gravemite_identifier run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
tag @s remove necromancer_despawn_3
tag @s remove necromancer_call_despawn
advancement revoke @s only kiwi2:necromancer_gravebound_charm_despawn