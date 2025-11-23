advancement revoke @s only kiwi2:point_dust
scoreboard players add @s Points 1
tellraw @s {"text": "+1 Points", "color": "#ffb860"}

execute if entity @s[scores={limitbreak_chosen_class=5}] run function kiwi2:points/magus_mana_upgrades
execute if entity @s[scores={limitbreak_chosen_class=6}] run function kiwi2:points/reaper_excision_upgrades
execute if entity @s[scores={limitbreak_chosen_class=7}] run function kiwi2:points/monk_conditioning_upgrades
execute if entity @s[scores={limitbreak_chosen_class=8}] run function kiwi2:points/necromancer_summon_upgrades
function kiwi2:points/points_progression_give