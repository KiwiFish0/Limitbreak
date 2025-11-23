execute if score world Time matches 18001 run title @a subtitle [{"text":"30 ","color":"green","bold":false},{"text":"Creepers","color":"green","bold":true}]
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon creeper ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1to3_point"}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon creeper ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1to3_point"}
execute if score world Time matches 18001..18010 run execute at @r[gamemode=survival] run summon creeper ~ ~50 ~ {Tags:["wave_mob"],DeathLootTable:"kiwi2:entities/1to3_point"}
execute if score world Time matches 18011 run execute at @r[gamemode=survival] run spreadplayers ~ ~ 1 20 false @e[type=creeper, tag=wave_mob]

# Maximum Points: 90
# Average Points: ~51
# Minimum Points: 30