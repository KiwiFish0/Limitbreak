execute at @s[predicate=kiwi3:player_sneak] run team join Hostile_Mobs @e[type=#enemy_mobs_only,distance=..35]
execute at @s[predicate=kiwi3:player_sneak] run team join WaveMobs @e[tag=wave_mob,distance=..35]
execute at @s[predicate=kiwi3:player_sneak] run effect give @e[team=Hostile_Mobs,distance=..35] glowing 5 1 true
execute at @s[predicate=kiwi3:player_sneak] run effect give @e[team=WaveMobs,distance=..35] glowing 5 1 true
execute at @s[predicate=kiwi3:player_sneak] run effect give @a glowing 5 1 true
execute at @s[predicate=kiwi3:player_sneak] run effect give @s darkness 5 255 true
execute at @s[predicate=kiwi3:player_sneak] as @e[distance=..2,type=!#items_and_non_mobs,type=!player] run tellraw @p ["[ ",{"selector":"@s"}, " ] Health = ", {"nbt":"Health","entity":"@s"}]
execute if entity @s[predicate=kiwi3:standing_still] run function kiwi3:relics/eye_of_night/eye_of_night_block
execute if entity @s[predicate=!kiwi3:standing_still] run schedule clear kiwi3:relics/eye_of_night/eye_of_night_block
effect give @s night_vision 15 0 true