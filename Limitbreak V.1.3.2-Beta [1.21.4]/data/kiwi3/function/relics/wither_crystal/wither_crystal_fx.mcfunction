summon area_effect_cloud ~ ~0.2 ~ {Particle:{type:"smoke"},Radius:1f,RadiusPerTick:0.5f,Duration:10}
execute as @e[distance=..6] unless entity @s[type=!#enemy_mobs_only,tag=!wave_mob] run effect give @s wither 10 1
particle end_rod ~ ~2 ~ 0.2 0.2 0.2 0.1 5
scoreboard players add @s crystal_duration 1
playsound minecraft:entity.phantom.ambient master @a[distance=..6] ~ ~ ~ 1 2
execute if score @s crystal_duration matches 30 run playsound minecraft:block.beacon.deactivate master @a[distance=..6] ~ ~ ~ 0.3 2
execute if score @s crystal_duration matches 30 run schedule function kiwi3:relics/wither_crystal/wither_crystal_give_schedule 60s append
execute if score @s crystal_duration matches 30 run kill @s
schedule function kiwi3:relics/wither_crystal/wither_crystal_spin 1t