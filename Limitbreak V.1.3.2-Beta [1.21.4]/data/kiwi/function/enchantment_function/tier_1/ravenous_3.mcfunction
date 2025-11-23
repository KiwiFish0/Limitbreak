summon evoker_fangs ~ ~ ~ {Warmup:10}
particle trial_spawner_detection ~ ~ ~ 0.2 0.8 0.2 0.1 50 normal
summon area_effect_cloud ~ ~ ~ {Particle:{type:"crit"},Radius:0f,RadiusPerTick:0.3f,Duration:10}
execute as @e[distance=..3,type=!player,type=!#impact_projectiles,type=!item,type=!painting,type=!#boat] run damage @s[distance=..3,type=!player,type=!#impact_projectiles,type=!item,type=!painting,type=!#boat] 3 player_attack
execute as @n[distance=..3,limit=3,type=!player,type=!evoker_fangs] at @s run summon evoker_fangs ~ ~ ~ {Warmup:10}