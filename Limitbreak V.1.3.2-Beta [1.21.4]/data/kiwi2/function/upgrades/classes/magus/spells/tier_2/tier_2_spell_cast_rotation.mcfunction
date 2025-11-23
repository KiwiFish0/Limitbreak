execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 0 run function kiwi2:upgrades/classes/magus/spells/tier_2/twin_missile
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 1 run function kiwi2:upgrades/classes/magus/spells/tier_2/tornado
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 2 run function kiwi2:upgrades/classes/magus/spells/tier_2/lightning
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 3 run function kiwi2:upgrades/classes/magus/spells/tier_2/ember_seal
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 4 run function kiwi2:upgrades/classes/magus/spells/tier_2/gale_branch
execute if score @s[tag=magus_tier_2_unlocked] magus_spell_tier_2 matches 5 run function kiwi2:upgrades/classes/magus/spells/tier_2/ice_wall
tag @s[tag=magus_tier_2_unlocked] add magus_casted_spell_tier_2
tag @s[tag=magus_tier_2_unlocked] add magus_unstable_check_tier_2
schedule function kiwi2:upgrades/classes/magus/spells/remove_casted_spell_tag 1t