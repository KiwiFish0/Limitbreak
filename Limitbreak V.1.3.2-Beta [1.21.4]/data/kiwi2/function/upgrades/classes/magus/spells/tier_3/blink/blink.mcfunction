scoreboard players set @s spell_cost_current 100
scoreboard players operation @s spell_cost_current /= @s mana_efficiency
execute if score @s magus_mana_bar < @s spell_cost_current run function kiwi2:upgrades/classes/magus/spells/not_enough_mana_warning

execute unless score @s magus_mana_bar < @s spell_cost_current run tag @s remove magus_blink_done
execute unless score @s magus_mana_bar < @s spell_cost_current run particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0 80 normal
execute unless score @s magus_mana_bar < @s spell_cost_current run particle dust_color_transition{from_color:[0.980,0.690,1.000],scale:1.5,to_color:[0.498,0.173,0.749]} ~ ~1 ~ 0.3 0.6 0.3 1 80 normal

execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^8 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_1
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^7 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_2
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^6 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_3
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^5 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_4
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^4 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_5
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^3 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_6
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^2 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_7
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] positioned ^ ^ ^1 if block ~ ~0.2 ~ #minecraft:magus_blink_phase if block ~ ~1 ~ #minecraft:magus_blink_phase run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_8

execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0
execute unless score @s magus_mana_bar < @s spell_cost_current run attribute @s gravity base reset
execute unless score @s magus_mana_bar < @s spell_cost_current run attribute @s safe_fall_distance base reset
execute unless score @s magus_mana_bar < @s spell_cost_current unless entity @s[tag=magus_blink_done] run return fail

execute unless score @s magus_mana_bar < @s spell_cost_current as @s[tag=magus_blink_done] at @s unless block ~ ~ ~ #magus_blink_phase run tp @s ~ ~1 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @s[tag=magus_blink_done] at @s unless block ~ ~1 ~ #magus_blink_phase run tp @s ~ ~2 ~
execute unless score @s magus_mana_bar < @s spell_cost_current as @s[tag=magus_blink_done] at @s run attribute @s gravity base set -0.0005
execute unless score @s magus_mana_bar < @s spell_cost_current as @s[tag=magus_blink_done] at @s run attribute @s safe_fall_distance base set 100000

execute unless score @s magus_mana_bar < @s spell_cost_current run schedule function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink_finish 20t replace
execute unless score @s magus_mana_bar < @s spell_cost_current run title @s actionbar [{"text":"[BLINK]","color":"#b96dc6","bold":true},{"text": " -","bold": false,"color": "red"},{"score": {"name": "@s","objective": "spell_cost_current"},"bold": false,"color": "red"},{"text": " Mana","bold": false,"color": "red"}]
execute unless score @s magus_mana_bar < @s spell_cost_current run scoreboard players operation @s magus_mana_bar -= @s spell_cost_current