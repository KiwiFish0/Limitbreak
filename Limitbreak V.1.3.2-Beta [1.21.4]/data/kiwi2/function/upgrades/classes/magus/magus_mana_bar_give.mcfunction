scoreboard players add world magus_count 1
execute store result score @s magus_count run scoreboard players get world magus_count
tag @s remove magus_mana_bar_not_shown

execute if score world magus_count matches 1 run bossbar set mana_bar max 100
execute if score world magus_count matches 1 run bossbar set mana_bar visible true
execute if score world magus_count matches 1 run bossbar set mana_bar players @s
execute if score world magus_count matches 1 run bossbar set mana_bar color blue

execute if score world magus_count matches 2 run bossbar set mana_bar2 max 100
execute if score world magus_count matches 2 run bossbar set mana_bar2 visible true
execute if score world magus_count matches 2 run bossbar set mana_bar2 players @s
execute if score world magus_count matches 2 run bossbar set mana_bar color blue

execute if score world magus_count matches 3 run bossbar set mana_bar3 max 100
execute if score world magus_count matches 3 run bossbar set mana_bar3 visible true
execute if score world magus_count matches 3 run bossbar set mana_bar3 players @s
execute if score world magus_count matches 3 run bossbar set mana_bar color blue

execute if score world magus_count matches 4 run bossbar set mana_bar4 max 100
execute if score world magus_count matches 4 run bossbar set mana_bar4 visible true
execute if score world magus_count matches 4 run bossbar set mana_bar4 players @s
execute if score world magus_count matches 4 run bossbar set mana_bar color blue

execute if score world magus_count matches 5 run bossbar set mana_bar5 max 100
execute if score world magus_count matches 5 run bossbar set mana_bar5 visible true
execute if score world magus_count matches 5 run bossbar set mana_bar5 players @s
execute if score world magus_count matches 5 run bossbar set mana_bar color blue

execute if score world magus_count matches 6 run bossbar set mana_bar6 max 100
execute if score world magus_count matches 6 run bossbar set mana_bar6 visible true
execute if score world magus_count matches 6 run bossbar set mana_bar6 players @s
execute if score world magus_count matches 6 run bossbar set mana_bar color blue

execute if score world magus_count matches 7 run bossbar set mana_bar7 max 100
execute if score world magus_count matches 7 run bossbar set mana_bar7 visible true
execute if score world magus_count matches 7 run bossbar set mana_bar7 players @s
execute if score world magus_count matches 7 run bossbar set mana_bar color blue

execute if score world magus_count matches 8 run bossbar set mana_bar8 max 100
execute if score world magus_count matches 8 run bossbar set mana_bar8 visible true
execute if score world magus_count matches 8 run bossbar set mana_bar8 players @s
execute if score world magus_count matches 8 run bossbar set mana_bar color blue

execute if score world magus_count matches 9 run bossbar set mana_bar9 max 100
execute if score world magus_count matches 9 run bossbar set mana_bar9 visible true
execute if score world magus_count matches 9 run bossbar set mana_bar9 players @s
execute if score world magus_count matches 9 run bossbar set mana_bar color blue

execute if score world magus_count matches 10 run bossbar set mana_bar10 max 100
execute if score world magus_count matches 10 run bossbar set mana_bar10 visible true
execute if score world magus_count matches 10 run bossbar set mana_bar10 players @s
execute if score world magus_count matches 10 run bossbar set mana_bar color blue