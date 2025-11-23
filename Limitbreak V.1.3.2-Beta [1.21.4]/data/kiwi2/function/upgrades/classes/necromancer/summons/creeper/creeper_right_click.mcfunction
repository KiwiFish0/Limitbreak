scoreboard players operation $temp creeper_identifier = @s creeper_identifier
execute if entity @s[predicate=!kiwi3:player_sneak] run function kiwi2:upgrades/classes/necromancer/summons/creeper/creeper_spawn
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=creeper] at @s if score @s creeper_identifier = $temp creeper_identifier run tp @s @p[predicate=kiwi3:player_sneak,nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{gunpowder_charm:1b}}}},limit=1,sort=nearest]
advancement revoke @s only kiwi2:necromancer_gunpowder_charm_spawn