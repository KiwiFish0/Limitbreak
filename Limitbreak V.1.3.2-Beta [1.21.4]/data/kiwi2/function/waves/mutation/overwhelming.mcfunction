execute at @a run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0.1
execute at @a run particle dust{color:[0.255,1.000,0.031],scale:3} ~ ~ ~ .5 1 .5 1 100
title @a title [{"color":"#267E9E","text":"⁎⁂⁎⁑⁂ "},{"bold":true,"color":"#207EE8","text":"OVERWHELMING"},{"color":"#16569E","text":" ⁂⁑⁎⁂⁎"}]
scoreboard players reset world Mutation_Rolled

execute if score world Time matches 18000..19999 store result score world TotalDayTime run scoreboard players operation world Day *= world LengthOfDay
execute if score world Time matches 18000..19999 store result score world Gametime run scoreboard players operation world TotalDayTime += world Wave_1_Start
execute if score world Time matches 18000..19999 store result storage kiwi:time_storage pos.x int 1 run scoreboard players get world Gametime
execute if score world Time matches 18000..19999 run function kiwi2:time_set_macro with storage kiwi:time_storage pos

execute if score world Time matches 20000..21999 store result score world TotalDayTime run scoreboard players operation world Day *= world LengthOfDay
execute if score world Time matches 20000..21999 store result score world Gametime run scoreboard players operation world TotalDayTime += world Wave_2_Start
execute if score world Time matches 20000..21999 store result storage kiwi:time_storage pos.x int 1 run scoreboard players get world Gametime
execute if score world Time matches 20000..21999 run function kiwi2:time_set_macro with storage kiwi:time_storage pos

execute if score world Time matches 22000..23999 store result score world TotalDayTime run scoreboard players operation world Day *= world LengthOfDay
execute if score world Time matches 22000..23999 store result score world Gametime run scoreboard players operation world TotalDayTime += world Wave_3_Start
execute if score world Time matches 22000..23999 store result storage kiwi:time_storage pos.x int 1 run scoreboard players get world Gametime
execute if score world Time matches 22000..23999 run function kiwi2:time_set_macro with storage kiwi:time_storage pos