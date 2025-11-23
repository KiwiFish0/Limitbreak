scoreboard players operation $temp hollow_husk_identifier = @s hollow_husk_identifier
execute if entity @s[predicate=!kiwi3:player_sneak] run function kiwi2:upgrades/classes/necromancer/summons/hollow_husk/hollow_husk_spawn
execute if entity @s[predicate=kiwi3:player_sneak] as @e[tag=hollow_husk] at @s if score @s hollow_husk_identifier = $temp hollow_husk_identifier run tp @s @p[predicate=kiwi3:player_sneak,nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{hollow_skull:1b}}}},limit=1,sort=nearest]
advancement revoke @s only kiwi2:necromancer_hollow_skull_spawn