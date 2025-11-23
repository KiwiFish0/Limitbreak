execute if predicate kiwi3:player_sneak if entity @s[advancements={kiwi2:magus_change_spell=true},tag=!magus_meditating] run function kiwi2:upgrades/classes/magus/spells/tier_3/tier_3_spell_rotation
execute if predicate kiwi3:player_sneak if entity @s[advancements={kiwi2:magus_change_spell_2=true},tag=!magus_meditating] run function kiwi2:upgrades/classes/magus/spells/tier_3/tier_3_spell_rotation_2

advancement revoke @s only kiwi2:magus_change_spell
advancement revoke @s only kiwi2:magus_change_spell_2