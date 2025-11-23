tag @s add oversunder_target
attribute @s gravity base set 1000
attribute @s explosion_knockback_resistance base set 1000
attribute @p[tag=oversunder_user,limit=1,sort=nearest] explosion_knockback_resistance base set 1000
effect give @p[tag=oversunder_user,limit=1,sort=nearest] resistance 1 255 true
tp @s ~ ~-2 ~
summon minecraft:tnt ~ ~7 ~ {explosion_power:7}
title @p[tag=oversunder_user,limit=1,sort=nearest] actionbar {"text": "[OVERSUNDER]","color": "red","bold": true}
execute as @p[tag=oversunder_user,limit=1,sort=nearest] at @s run function kiwi:enchantment_function/skill_activate_sound
execute at @e[tag=oversunder_target,limit=1,sort=nearest] run particle block_crumble{block_state:"minecraft:redstone_block"} ~ ~0.8 ~ 1 1 1 1 150
schedule function kiwi:enchantment_function/oversunder_post_enchant 10t