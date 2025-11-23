execute if score @s magus_spell_tier_1 matches 0 run function kiwi2:upgrades/classes/magus/spells/tier_1/magic_missile
execute if score @s magus_spell_tier_1 matches 1 run function kiwi2:upgrades/classes/magus/spells/tier_1/fang_line
execute if score @s magus_spell_tier_1 matches 2 run function kiwi2:upgrades/classes/magus/spells/tier_1/levitate
execute if score @s magus_spell_tier_1 matches 3 run function kiwi2:upgrades/classes/magus/spells/tier_1/fireball_branch
execute if score @s magus_spell_tier_1 matches 4 run function kiwi2:upgrades/classes/magus/spells/tier_1/meditate
execute if score @s magus_spell_tier_1 matches 5 run function kiwi2:upgrades/classes/magus/spells/tier_1/bubble_shield/bubble_shield
tag @s add magus_casted_spell_tier_1
tag @s add magus_unstable_check_tier_1
schedule function kiwi2:upgrades/classes/magus/spells/remove_casted_spell_tag 1t