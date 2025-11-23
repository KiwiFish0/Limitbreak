scoreboard players add @s[tag=!magus_meditating] magus_spell_tier_3 1
execute if score @s magus_spell_tier_3 matches 6.. run scoreboard players set @s magus_spell_tier_3 0
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 0 run title @s actionbar {"text":"[ MAGIC MISSILE BARRAGE ]","color":"#59c8f7","bold":true}
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 1 run title @s actionbar {"text":"[ BLINK ]","color":"#b96dc6","bold":true}
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 2 run title @s actionbar {"text":"[ THUNDERCLAP ]","color":"#f4cb38","bold":true}
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 3 run title @s actionbar {"text":"[ HEAT MANTLE ]","color":"#df5f24","bold":true}
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 4 run title @s actionbar {"text":"[ ICE BLITZ ]","color":"#4aebf0","bold":true}
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 5 run title @s actionbar {"text":"[ COPYCAT ]","color":"#858585","bold":true}
execute if score @s[tag=!magus_tier_3_unlocked] magus_spell_tier_3 matches 1..5 run function kiwi2:upgrades/classes/magus/spells/unable_to_use_magic
playsound minecraft:ui.button.click player @s[tag=!magus_meditating,tag=magus_tier_3_unlocked]