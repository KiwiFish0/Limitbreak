execute if entity @e[tag=flicker_strike_hit,scores={flicker_strike_hit_duration=1..}] run schedule function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_hit_duration 1t
execute as @e[tag=flicker_strike_hit,scores={flicker_strike_hit_duration=1..}] at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..48] ~ ~ ~ 1 2
execute as @e[tag=flicker_strike_hit,scores={flicker_strike_hit_duration=1..}] at @s run particle sweep_attack ~ ~1 ~ 0.2 0.2 0.2 1 1
execute as @e[tag=flicker_strike_hit,scores={flicker_strike_hit_duration=1..}] at @s run damage @s 0 player_attack by @p[tag=flicker_strike_ready]
execute as @e[tag=flicker_strike_hit,scores={flicker_strike_hit_duration=1..}] at @s run scoreboard players remove @s flicker_strike_hit_duration 1
execute as @e[tag=flicker_strike_hit,scores={flicker_strike_hit_duration=0}] at @s run tag @s remove flicker_strike_hit