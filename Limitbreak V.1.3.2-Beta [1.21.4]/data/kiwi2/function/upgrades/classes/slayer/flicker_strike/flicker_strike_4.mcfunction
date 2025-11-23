tp ^ ^ ^4
execute positioned ^ ^ ^4 run particle sweep_attack ~ ~1 ~ 0 0 0 1 1
execute positioned ^ ^ ^4 run particle end_rod ~ ~1 ~ 0.1 0 0.1 0 15
execute positioned ^ ^ ^4 run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.5,0.0,0.0],scale:1} ^-1 ^1.2 ^ 0.1 0 0.1 0 15
execute positioned ^ ^ ^4 run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.5,0.0,0.0],scale:1} ^1 ^1.2 ^ 0.1 0 0.1 0 15
execute positioned ^ ^ ^4 as @e[type=!#items_and_non_mobs,type=!player,distance=..1] at @s run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_hit
execute as @s at @s unless block ~ ~ ~ #magus_blink_phase run tp @s ~ ~0.5 ~
execute as @s at @s unless block ~ ~1 ~ #magus_blink_phase run tp @s ~ ~1 ~