scoreboard players add @s[tag=!magus_meditating] magus_spell_tier_1 1
execute if score @s magus_spell_tier_1 matches 6.. run scoreboard players set @s magus_spell_tier_1 0
execute if score @s magus_spell_tier_1 matches 0 run title @s actionbar {"text":"[ MAGIC MISSILE ]","color":"#59c8f7","bold":true}
execute if score @s magus_spell_tier_1 matches 1 run title @s actionbar {"text":"[ SNAPJAW ]","color":"gray","bold":true}
execute if score @s magus_spell_tier_1 matches 2 run title @s actionbar {"text":"[ LEVITATE ]","color":"white","bold":true}
execute if score @s magus_spell_tier_1 matches 3 run title @s actionbar {"text":"[ FIREBALL ]","color":"#ef9733","bold":true}
execute if score @s magus_spell_tier_1 matches 4 run title @s actionbar {"text":"[ MEDITATE ]","color":"#8899c1","bold":true}
execute if score @s magus_spell_tier_1 matches 5 run title @s actionbar {"text":"[ WATER SHIELD ]","color":"#b6f9ff","bold":true}
playsound minecraft:ui.button.click player @s