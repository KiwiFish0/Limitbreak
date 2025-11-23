execute if score world Time matches 18001 run title @a subtitle [{"text":"30 ","color":"green","bold":false},{"text":"Skeletons","color":"gray","bold":true}]
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon skeleton ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1_point"}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon skeleton ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1_point"}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon skeleton ~ ~50 ~ {Tags:["wave_mob"],HandItems:[{id:"minecraft:bow",count:1},{}],DeathLootTable:"kiwi2:entities/1to3_point"}
execute if score world Time matches 18011 run execute at @r[gamemode=survival] run spreadplayers ~ ~ 1 20 false @e[type=skeleton, tag=wave_mob]

# Maximum Points: 50
# Average Points: ~35
# Minimum Points: 30