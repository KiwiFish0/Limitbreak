execute if block ^ ^1 ^1 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_1
execute if block ^ ^1 ^2 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_2
execute if block ^ ^1 ^3 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_3
execute if block ^ ^1 ^4 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_4
execute if block ^ ^1 ^5 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_5
execute if block ^ ^1 ^6 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_6
execute if block ^ ^1 ^7 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_7
execute if block ^ ^1 ^8 #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_8
tag @s add flicker_striked
playsound minecraft:entity.evoker_fangs.attack master @a[distance=..48] ~ ~ ~ 1 2
playsound minecraft:block.trial_spawner.spawn_item master @a[distance=..48] ~ ~ ~ 1 0
playsound minecraft:block.vault.reject_rewarded_player master @a[distance=..48] ~ ~ ~ 1 2
schedule function kiwi2:upgrades/classes/slayer/flicker_strike/readjust_1 1t
schedule function kiwi2:upgrades/classes/slayer/flicker_strike/readjust_1 2t
schedule function kiwi2:upgrades/classes/slayer/flicker_strike/readjust_1 3t
schedule function kiwi2:upgrades/classes/slayer/flicker_strike/readjust_1 4t
schedule function kiwi2:upgrades/classes/slayer/flicker_strike/readjust_1 5t
scoreboard players remove @s[scores={class_ability_scoreboard=1..}] class_ability_scoreboard 1
advancement revoke @s only kiwi2:slayer_flicker_strike_right_click