scoreboard players add @s[tag=!magus_meditating] magus_spell_tier_2 1
execute if score @s magus_spell_tier_2 matches 6.. run scoreboard players set @s magus_spell_tier_2 0
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 0 run title @s actionbar {"text":"[ TWIN MISSILE ]","color":"#59c8f7","bold":true}
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 1 run title @s actionbar {"text":"[ TORNADO ]","color":"#b2c2ab","bold":true}
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 2 run title @s actionbar {"text":"[ LIGHTNING ]","color":"#dff8ff","bold":true}
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 3 run title @s actionbar {"text":"[ EMBER SEAL ]","color":"#bd6437","bold":true}
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 4 run title @s actionbar {"text":"[ GALE ]","color":"#56c93c","bold":true}
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 5 run title @s actionbar {"text":"[ ICE WALL ]","color":"#22c7d6","bold":true}
execute if score @s[tag=!magus_tier_2_unlocked] magus_spell_tier_2 matches 1..5 run function kiwi2:upgrades/classes/magus/spells/unable_to_use_magic
playsound minecraft:ui.button.click player @s[tag=!magus_meditating,tag=magus_tier_2_unlocked]