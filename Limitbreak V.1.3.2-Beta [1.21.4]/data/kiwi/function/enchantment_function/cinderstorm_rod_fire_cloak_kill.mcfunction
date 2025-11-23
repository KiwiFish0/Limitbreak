particle trial_spawner_detection ~ ~1 ~ 0 0 0 0.5 150
particle flame ~ ~1 ~ 0 0 0 0.5 100
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 5 1.5
setblock ~8 ~ ~0 minecraft:fire keep
setblock ~-8 ~ ~0 minecraft:fire keep
setblock ~0 ~ ~8 minecraft:fire keep
setblock ~0 ~ ~-8 minecraft:fire keep

setblock ~6 ~ ~5 minecraft:fire keep
setblock ~6 ~ ~-5 minecraft:fire keep
setblock ~-6 ~ ~5 minecraft:fire keep
setblock ~-6 ~ ~-5 minecraft:fire keep
setblock ~5 ~ ~6 minecraft:fire keep
setblock ~5 ~ ~-6 minecraft:fire keep
setblock ~-5 ~ ~6 minecraft:fire keep
setblock ~-5 ~ ~-6 minecraft:fire keep

setblock ~7 ~ ~3 minecraft:fire keep
setblock ~7 ~ ~-3 minecraft:fire keep
setblock ~-7 ~ ~3 minecraft:fire keep
setblock ~-7 ~ ~-3 minecraft:fire keep
setblock ~3 ~ ~7 minecraft:fire keep
setblock ~3 ~ ~-7 minecraft:fire keep
setblock ~-3 ~ ~7 minecraft:fire keep
setblock ~-3 ~ ~-7 minecraft:fire keep
summon area_effect_cloud ~ ~ ~ {Particle:{type:"flame"},Radius:1f,RadiusPerTick:0.08f,Duration:90,potion_contents:{custom_effects:[{id:"minecraft:glowing",amplifier:1,duration:60,show_particles:0b}]}}
kill @s