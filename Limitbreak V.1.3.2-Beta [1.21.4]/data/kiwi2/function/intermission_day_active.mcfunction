scoreboard players reset world Gametime
scoreboard players reset world TotalDayTime
scoreboard players reset world IntermissionDayCount
scoreboard players set world TimeLoopStartPoint 1
execute if score world IntermissionDayActive matches 1..8 store result score world TotalDayTime run scoreboard players operation world Day *= world LengthOfDay
execute if score world IntermissionDayActive matches 1..8 store result score world Gametime run scoreboard players operation world TotalDayTime += world TimeLoopStartPoint
execute if score world IntermissionDayActive matches 1..8 store result storage kiwi:time_storage pos.x int 1 run scoreboard players get world Gametime
execute if score world IntermissionDayActive matches 1..8 run function kiwi2:time_set_macro with storage kiwi:time_storage pos
execute if score world IntermissionDayActive matches 1..8 run scoreboard players add world IntermissionDayActive 1
execute if score world IntermissionDayActive matches 8.. run function kiwi2:intermission_day_exit
execute if score world IntermissionDayActive matches 1..8 run tellraw @a [{"color":"#FF9645","text":"Intermission Day ["},{"color":"white","score":{"name":"world","objective":"IntermissionDayActive"}},{"text": "/7","color": "white"},{"color":"#FF9645","text":"]"}]
# Repeats the day seven times before continuing, can be exited prematurely.