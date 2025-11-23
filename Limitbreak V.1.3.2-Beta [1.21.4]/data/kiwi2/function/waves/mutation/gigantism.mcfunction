execute as @e[tag=wave_mob] as @s run attribute @s minecraft:scale base set 1.25
execute at @a run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run particle dust{color:[0.255,1.000,0.031],scale:3} ~ ~ ~ .5 1 .5 1 100
title @a title [{"color":"#B87500","text":"♕❉❁ "},{"bold":true,"color":"#FFA200","text":"GIGANTISM"},{"color":"#B87500","text":" ❁❉♕"}]