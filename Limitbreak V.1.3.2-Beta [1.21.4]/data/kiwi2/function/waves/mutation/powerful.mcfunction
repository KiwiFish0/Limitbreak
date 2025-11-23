effect give @e[tag=wave_mob] strength infinite 0 true
execute at @a run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run particle dust{color:[0.255,1.000,0.031],scale:3} ~ ~ ~ .5 1 .5 1 100
title @a title [{"color":"dark_red","text":"◈❖✠ "},{"bold":true,"color":"red","text":"POWERFUL"},{"color":"dark_red","text":" ✠❖◈"}]