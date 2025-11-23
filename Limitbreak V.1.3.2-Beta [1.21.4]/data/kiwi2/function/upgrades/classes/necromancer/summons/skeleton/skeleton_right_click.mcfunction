scoreboard players operation $temp skeleton_identifier = @s skeleton_identifier
execute if entity @s[predicate=!kiwi3:player_sneak] run function kiwi2:upgrades/classes/necromancer/summons/skeleton/skeleton_spawn
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=skeleton] at @s if score @s skeleton_identifier = $temp skeleton_identifier run tp @s @p[predicate=kiwi3:player_sneak,nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{bone_charm:1b}}}},limit=1,sort=nearest]
advancement revoke @s only kiwi2:necromancer_bone_charm_spawn