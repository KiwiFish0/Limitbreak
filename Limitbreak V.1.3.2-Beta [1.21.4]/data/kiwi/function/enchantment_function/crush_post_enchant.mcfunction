execute if entity @e[tag=crush_source] at @e[tag=crush_source] run particle minecraft:explosion ~ ~ ~ 3.5 0 3.5 0 50
execute unless entity @e[tag=crush_source] at @p[tag=crush_user] run particle minecraft:explosion ~ ~ ~ 3.5 0 3.5 0 50
execute if entity @e[tag=crush_source] at @e[tag=crush_source] run particle minecraft:sweep_attack ~ ~ ~ 3.5 0 3.5 0 50
execute unless entity @e[tag=crush_source] at @p[tag=crush_user] run particle minecraft:sweep_attack ~ ~ ~ 3.5 0 3.5 0 50
execute as @e[tag=crush_target_close] at @s run tp @s ~ ~-1 ~
execute as @e[tag=crush_target_close,tag=!boss_check] run damage @s 16 player_attack by @p[tag=crush_user] from @p[tag=crush_user]
execute as @e[tag=crush_target_close] at @s unless block ~ ~2 ~ air run setblock ~ ~2 ~ air
execute at @p[tag=crush_user] run playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 0.1
execute as @e[tag=crush_target_far] run attribute @s gravity base set -0.7
execute as @e[tag=crush_user] run attribute @s gravity base set -0.8
execute at @e[tag=crush_target_far] run particle gust_emitter_small ~ ~1 ~ 0 0 0 1 1
schedule function kiwi:enchantment_function/crush_post_enchant_2 2t