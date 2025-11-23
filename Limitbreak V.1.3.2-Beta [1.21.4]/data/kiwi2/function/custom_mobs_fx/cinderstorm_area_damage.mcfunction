damage @e[distance=..10,type=!blaze,type=!item,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,type=!#boat,type=!item_display,type=!text_display,type=!armor_stand,type=!area_effect_cloud,tag=!cinderstorm_tornado,limit=1] 10 magic by @s
effect clear @e[distance=..10,type=!blaze,type=!item,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,type=!#boat,type=!item_display,type=!text_display,type=!armor_stand,tag=!cinderstorm_tornado,limit=1] fire_resistance
setblock ~ ~ ~ fire keep
execute if entity @s[tag=!cinderstorm_phase_2] run particle lava ~ ~1 ~ 0.5 0.5 0.5 1 2
execute if entity @s[tag=cinderstorm_phase_2] run particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 2
execute if entity @s[tag=cinderstorm_phase_2] run particle trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.5 0.5 0 2