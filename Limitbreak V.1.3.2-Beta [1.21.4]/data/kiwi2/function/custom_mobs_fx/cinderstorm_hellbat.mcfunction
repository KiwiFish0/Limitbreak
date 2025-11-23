execute if entity @e[type=blaze,tag=cinderstorm,tag=boss,tag=!cinderstorm_phase_2] run particle trial_spawner_detection ~ ~ ~ 0.25 0.25 0.25 0 15
execute if entity @e[type=blaze,tag=cinderstorm,tag=boss,tag=!cinderstorm_phase_2] run particle flame ~ ~ ~ 0.25 0.25 0.25 0 15
execute if entity @e[type=blaze,tag=cinderstorm,tag=boss,tag=!cinderstorm_phase_2] if entity @p[distance=..4] run function kiwi2:custom_mobs_fx/cinderstorm_hellbat_burn
execute if entity @e[type=blaze,tag=cinderstorm,tag=boss,tag=cinderstorm_phase_2] run particle trial_spawner_detection_ominous ~ ~ ~ 0.25 0.25 0.25 0 15
execute if entity @e[type=blaze,tag=cinderstorm,tag=boss,tag=cinderstorm_phase_2] run particle soul_fire_flame ~ ~ ~ 0.25 0.25 0.25 0 15