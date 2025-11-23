# Evolutions / Souls (big upgrades, stats / skills / on-hit / on-death / effect / visual changes / gameplay changes)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_hunger:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_hunger
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_unrest:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_unrest
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_frost:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_frost
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_mire:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_mire
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_burden:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_burden
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_burrowing:1b}}}},predicate=!kiwi3:player_sneak] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_burrowing
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_burrowing:1b}}}},predicate=kiwi3:player_sneak] run function kiwi2:upgrades/classes/necromancer/summons/gravemite/gravemite_lurker_burrow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_reclamation:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_reclamation
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_awakening:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_awakening
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_soul_of_ash:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/soul_of_ash
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gunpowder",components:{"minecraft:custom_data":{necromancer_volatile_powder:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/volatile_powder
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gunpowder",components:{"minecraft:custom_data":{necromancer_charged_core:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/charged_core

# Strands (small upgrades, stats / effect / on-hit / on-death)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_skitter_strand_upgrade:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/skitter_strand
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone",components:{"minecraft:custom_data":{necromancer_titan_strand_upgrade:1b}}}}] run function kiwi2:upgrades/classes/necromancer/summon_upgrades/souls/titan_strand

advancement revoke @s only kiwi2:necromancer_upgrades_souls