summon area_effect_cloud ~ ~0.2 ~ {Particle:{type:"landing_obsidian_tear"},Radius:1f,RadiusPerTick:0.5f,Duration:10}
execute as @e[distance=..6] unless entity @s[type=!#enemy_mobs_only,tag=!wave_mob] run effect give @s slowness 3 3
particle end_rod ~ ~2 ~ 0.2 0.2 0.2 0.1 5
scoreboard players add @s crystal_duration 1
playsound minecraft:entity.turtle.death_baby master @a ~ ~ ~ 2 2
execute if score @s crystal_duration matches 20 run playsound minecraft:block.beacon.deactivate master @a[distance=..6] ~ ~ ~ 0.3 2
execute if score @s crystal_duration matches 20 run schedule function kiwi3:relics/slowness_crystal/slowness_crystal_give_schedule 60s append
execute if score @s crystal_duration matches 20 run kill @s
schedule function kiwi3:relics/slowness_crystal/slowness_crystal_spin 1t