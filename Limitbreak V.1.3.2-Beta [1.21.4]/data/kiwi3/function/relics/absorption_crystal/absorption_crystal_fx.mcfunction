summon area_effect_cloud ~ ~0.2 ~ {Particle:{type:"dust",color:[1.000,0.867,0.322],scale:1},Radius:1f,RadiusPerTick:0.5f,Duration:10}
effect give @a[distance=..6] absorption 10 1
particle end_rod ~ ~2 ~ 0.2 0.2 0.2 0.1 5
scoreboard players add @s crystal_duration 1
playsound minecraft:item.trident.throw master @a[distance=..6] ~ ~ ~ 0.3 0
execute if score @s crystal_duration matches 30 run playsound minecraft:block.beacon.deactivate master @a[distance=..6] ~ ~ ~ 0.3 2
execute if score @s crystal_duration matches 30 run schedule function kiwi3:relics/absorption_crystal/absorption_crystal_give_schedule 60s append
execute if score @s crystal_duration matches 30 run kill @s
schedule function kiwi3:relics/absorption_crystal/absorption_crystal_spin 1t