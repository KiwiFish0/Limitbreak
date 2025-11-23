execute if score world Time matches 18001 run title @a subtitle [{"text":"15 ","color":"green","bold":false},{"text":"Phantoms","color":"dark_blue","bold":true}]
execute if score world Time matches 18001..18005 run execute at @r[gamemode=survival] run summon phantom ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/3to5_point"}
execute if score world Time matches 18001..18005 run execute at @r[gamemode=survival] run summon phantom ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1_point"}
execute if score world Time matches 18001..18005 run execute at @r[gamemode=survival] run summon phantom ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/3to5_point"}
execute if score world Time matches 18006 run execute at @r[gamemode=survival] run spreadplayers ~ ~ 1 20 false @e[type=phantom, tag=wave_mob]

# Maximum Points: 55
# Average Points: ~43
# Minimum Points: 35