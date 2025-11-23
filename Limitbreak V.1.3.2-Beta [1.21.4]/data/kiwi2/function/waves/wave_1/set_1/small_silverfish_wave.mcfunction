execute if score world Time matches 18001 run title @a subtitle [{"text":"60 ","color":"green","bold":false},{"text":"Silverfish","color":"#868686","bold":true}]
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon silverfish ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1_point"}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon silverfish ~ ~50 ~ {Tags:["wave_mob"]}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon silverfish ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1_point"}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon silverfish ~ ~50 ~ {Tags:["wave_mob"]}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon silverfish ~ ~50 ~ {Tags:["wave_mob"]}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon silverfish ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1_point"}
execute if score world Time matches 18011 run execute at @r[gamemode=survival] run spreadplayers ~ ~ 1 20 false @e[type=silverfish, tag=wave_mob]

# Maximum Points: 30
# Average Points: ~30
# Minimum Points: 30