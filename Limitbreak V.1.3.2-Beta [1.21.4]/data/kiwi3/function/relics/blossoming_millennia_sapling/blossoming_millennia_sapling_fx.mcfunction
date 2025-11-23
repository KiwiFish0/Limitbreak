scoreboard players set @s blossoming_millennia_sapling 0
xp add @s 20
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 2 1.8
execute if predicate kiwi2:chance_random_5 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"cherry_leaves"},ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.1f,Duration:40,potion_contents:{custom_effects:[{id:"minecraft:absorption",amplifier:1,duration:200,show_particles:0b,show_icon:1b},{id:"minecraft:regeneration",amplifier:1,duration:200,show_particles:0b,show_icon:1b}]}}
particle cherry_leaves ~ ~1 ~ 0.3 0.3 0.3 0 10