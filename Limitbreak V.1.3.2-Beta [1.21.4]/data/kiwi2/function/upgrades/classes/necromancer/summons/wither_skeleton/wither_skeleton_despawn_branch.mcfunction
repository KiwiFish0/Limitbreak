execute if entity @n[type=wither_skeleton] run tag @n[type=wither_skeleton] add wither_skeleton_select
execute if entity @n[type=wither_skeleton,tag=wither_skeleton_select,tag=!death_knight_reanimated] run function kiwi2:upgrades/classes/necromancer/summons/wither_skeleton/wither_skeleton_despawn
execute if entity @n[type=wither_skeleton,tag=wither_skeleton_select,tag=death_knight_reanimated] run function kiwi2:upgrades/classes/necromancer/summons/wither_skeleton/death_knight/death_knight_despawn
advancement revoke @s only kiwi2:necromancer_withered_charm_despawn