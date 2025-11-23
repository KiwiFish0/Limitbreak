execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 0 run function kiwi2:upgrades/classes/magus/spells/tier_3/magic_missile_barrage
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 1 run function kiwi2:upgrades/classes/magus/spells/tier_3/blink/blink
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 2 run function kiwi2:upgrades/classes/magus/spells/tier_3/thunderclap
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 3 run function kiwi2:upgrades/classes/magus/spells/tier_3/fire_mantle
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 4 run function kiwi2:upgrades/classes/magus/spells/tier_3/ice_arrows
execute if score @s[tag=magus_tier_3_unlocked] magus_spell_tier_3 matches 5 run function kiwi2:upgrades/classes/magus/spells/tier_3/copycat/copycat
tag @s[tag=magus_tier_3_unlocked] add magus_casted_spell_tier_3
tag @s[tag=magus_tier_3_unlocked] add magus_unstable_check_tier_3
schedule function kiwi2:upgrades/classes/magus/spells/remove_casted_spell_tag 1t