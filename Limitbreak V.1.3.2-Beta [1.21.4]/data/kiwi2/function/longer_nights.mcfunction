scoreboard players reset world Gametime
scoreboard players reset world TotalDayTime
scoreboard players add world LongerNights 1
scoreboard players set world TimeLoopStartPoint 22100
execute if score world LongerNights matches ..24 unless score world Boss_Wave_Check matches 1 store result score world TotalDayTime run scoreboard players operation world Day *= world LengthOfDay
execute if score world LongerNights matches ..24 unless score world Boss_Wave_Check matches 1 store result score world Gametime run scoreboard players operation world TotalDayTime += world TimeLoopStartPoint
execute if score world LongerNights matches ..24 unless score world Boss_Wave_Check matches 1 store result storage kiwi:time_storage pos.x int 1 run scoreboard players get world Gametime
execute if score world LongerNights matches ..24 unless score world Boss_Wave_Check matches 1 run function kiwi2:time_set_macro with storage kiwi:time_storage pos
execute unless score world LongerNights matches 24.. unless score world Boss_Wave_Check matches 1 run scoreboard players add world LongerNights 1

# Boss Wave = The night keeps going until the boss is dead
execute if score world Boss_Death_Check matches 1 store result score world TotalDayTime run scoreboard players operation world Day *= world LengthOfDay
execute if score world Boss_Death_Check matches 1 store result score world Gametime run scoreboard players operation world TotalDayTime += world TimeLoopStartPoint
execute if score world Boss_Death_Check matches 1 store result storage kiwi:time_storage pos.x int 1 run scoreboard players get world Gametime
execute if score world Boss_Death_Check matches 1 run function kiwi2:time_set_macro with storage kiwi:time_storage pos

# Skip time to end quickly when boss dies
execute if score world Boss_Death_Check matches 0 if score world Boss_Wave_Check matches 1 run time add 1600

# 200 ticks from 22100 - 22300
# Increments by 2 every function call
# (24 / 2) * 200 = 2400