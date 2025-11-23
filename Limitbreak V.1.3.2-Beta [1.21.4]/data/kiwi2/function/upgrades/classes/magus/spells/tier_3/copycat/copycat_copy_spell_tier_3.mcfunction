scoreboard players operation @s magus_spell_tier_3 = @a[scores={limitbreak_chosen_class=5},limit=1,sort=random,tag=magus_casted_spell_tier_3] magus_spell_tier_3
execute unless score @s magus_spell_tier_3 matches 5 run function kiwi2:upgrades/classes/magus/spells/tier_3/tier_3_spell_cast_rotation
kill @s