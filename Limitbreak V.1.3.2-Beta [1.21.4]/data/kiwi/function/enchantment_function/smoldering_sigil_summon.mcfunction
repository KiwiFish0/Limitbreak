execute as @a[distance=..8] at @s run damage @s 20 lava
execute as @e[distance=..8,type=!player,type=!item,type=!#minecraft:impact_projectiles,type=!#boat,type=!item_frame,type=!glow_item_frame,type=!painting,type=!armor_stand,type=!area_effect_cloud] at @s run damage @s 25 lava
execute as @e[distance=..8,type=!item,type=!#minecraft:impact_projectiles,type=!#boat,type=!item_frame,type=!glow_item_frame,type=!painting,type=!armor_stand,type=!area_effect_cloud] at @s run data merge entity @s {Fire:200}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"trial_spawner_detection"},Radius:12f,Duration:20}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"flame"},Radius:12f,Duration:20}
summon tnt ~ ~1 ~ {explosion_power:5}
title @s actionbar {"text": "The wrath of the Cinderstorm consumes all...", "bold": true, "color": "#c83702"}
playsound minecraft:block.end_portal.spawn master @a[distance=..125] ~ ~ ~ 100 0.75
playsound minecraft:entity.blaze.ambient master @a[distance=..125] ~ ~ ~ 100 0
function kiwi:enchantment_function/smoldering_sigil_burn_blocks
function kiwi:enchantment_function/smoldering_sigil_summon_blaze
scoreboard players set @s smoldering_sigil_cooldown 24000