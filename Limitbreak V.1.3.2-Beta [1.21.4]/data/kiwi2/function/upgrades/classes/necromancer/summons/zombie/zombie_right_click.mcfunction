scoreboard players operation $temp zombie_identifier = @s zombie_identifier
execute if entity @s[predicate=!kiwi3:player_sneak] run function kiwi2:upgrades/classes/necromancer/summons/zombie/zombie_spawn
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=zombie] at @s if score @s zombie_identifier = $temp zombie_identifier run tp @s @p[predicate=kiwi3:player_sneak,nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{flesh_charm:1b}}}},limit=1,sort=nearest]
advancement revoke @s only kiwi2:necromancer_flesh_charm_spawn