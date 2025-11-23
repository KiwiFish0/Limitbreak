tag @s add necromancer_call_despawn
tag @s add necromancer_despawn
execute if score @s[predicate=!kiwi3:player_sneak] hollow_husk_identifier = @n[type=skeleton,tag=hollow_husk,sort=nearest] hollow_husk_identifier as @n[type=skeleton,tag=hollow_husk,sort=nearest,limit=1] at @s run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
scoreboard players operation $temp hollow_husk_identifier = @s hollow_husk_identifier
execute if entity @s[predicate=kiwi3:player_sneak] as @e[type=skeleton,tag=hollow_husk] at @s if score @s hollow_husk_identifier = $temp hollow_husk_identifier run function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_fx
tag @s remove necromancer_despawn
tag @s remove necromancer_call_despawn
advancement revoke @s only kiwi2:necromancer_hollow_skull_despawn