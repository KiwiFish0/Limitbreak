title @s actionbar {"text": ">> UNSTABLE <<","bold": true,"color": "red"}
playsound item.ominous_bottle.dispose master @s ~ ~ ~ 5 0
playsound block.glass.break master @s ~ ~ ~ 5 0
execute if score @s magus_spell_tier_1 matches 0 if predicate kiwi2:holding_magus_wand_tier_1 run tag @e[type=item_display,sort=nearest,tag=magic_missile,limit=1] add unstable_spell
execute if score @s magus_spell_tier_1 matches 1 if predicate kiwi2:holding_magus_wand_tier_1 run spreadplayers ~ ~ 1 5 false @e[type=evoker_fangs,tag=magus_fang_line]
execute if score @s magus_spell_tier_1 matches 2 if predicate kiwi2:holding_magus_wand_tier_1 as @e[type=minecraft:shulker_bullet,tag=magus_shulker_bullet] at @s run data modify entity @s Target set from entity @e[type=shulker_bullet,limit=1,sort=random,distance=..25] UUID
execute if score @s magus_spell_tier_1 matches 3 if predicate kiwi2:holding_magus_wand_tier_1 run function kiwi2:upgrades/classes/magus/spells/tier_1/fireball_unstable
execute if score @s magus_spell_tier_1 matches 5 if predicate kiwi2:holding_magus_wand_tier_1 run tag @s add magus_bubble_shielded_unstable

execute if score @s magus_spell_tier_2 matches 0 if predicate kiwi2:holding_magus_wand_tier_2 run tag @e[type=item_display,sort=nearest,tag=magic_missile,limit=2] add unstable_spell
execute if score @s magus_spell_tier_2 matches 1 if predicate kiwi2:holding_magus_wand_tier_2 run data merge entity @e[type=bat,tag=magus_tornado,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Tags:["magus_tornado"],attributes:[{id:"minecraft:gravity",base:-0.1}]}
execute if score @s magus_spell_tier_2 matches 2 if predicate kiwi2:holding_magus_wand_tier_2 run summon lightning_bolt ~ ~ ~
execute if score @s magus_spell_tier_2 matches 3 if predicate kiwi2:holding_magus_wand_tier_2 as @e[type=armor_stand,tag=magus_ember_seal_marker,sort=nearest,limit=1] at @s run tag @s add unstable_spell
execute if score @s magus_spell_tier_2 matches 4 if predicate kiwi2:holding_magus_wand_tier_2 run function kiwi2:upgrades/classes/magus/spells/tier_2/gale_unstable
execute if score @s magus_spell_tier_2 matches 5 if predicate kiwi2:holding_magus_wand_tier_2 run tag @s add unstable_spell

execute if score @s magus_spell_tier_3 matches 0 if predicate kiwi2:holding_magus_wand_tier_3 run tag @e[type=item_display,sort=nearest,tag=magic_missile,limit=5] add unstable_spell
execute if score @s magus_spell_tier_3 matches 2 if predicate kiwi2:holding_magus_wand_tier_3 run tag @e[type=armor_stand,tag=magus_lightning_bolt_marker,limit=1,sort=nearest] add unstable_spell
execute if score @s magus_spell_tier_3 matches 3 if predicate kiwi2:holding_magus_wand_tier_3 run tag @s add fire_mantle_unstable
execute if score @s magus_spell_tier_3 matches 4 if predicate kiwi2:holding_magus_wand_tier_3 run tag @s add ice_arrows_unstable