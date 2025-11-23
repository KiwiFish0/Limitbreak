advancement revoke @s only kiwi2:point_clump
scoreboard players add @s Points 10
tellraw @s {"text": "+10 Points", "color": "#ff9a3b"}

execute if entity @s[scores={limitbreak_chosen_class=1}] run function kiwi2:points/slayer_quickdraw_upgrades
execute if entity @s[scores={limitbreak_chosen_class=5}] run function kiwi2:points/magus_mana_upgrades
execute if entity @s[scores={limitbreak_chosen_class=6}] run function kiwi2:points/reaper_excision_upgrades
execute if entity @s[scores={limitbreak_chosen_class=7}] run function kiwi2:points/monk_conditioning_upgrades
execute if entity @s[scores={limitbreak_chosen_class=8}] run function kiwi2:points/necromancer_summon_upgrades
function kiwi2:points/points_progression_give