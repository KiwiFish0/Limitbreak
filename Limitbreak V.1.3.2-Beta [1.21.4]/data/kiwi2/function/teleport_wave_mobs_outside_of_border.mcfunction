execute if score world Border matches 0 positioned ~-24 ~-64 ~-24 as @e[tag=wave_mob] unless entity @s[tag=wave_mob,dx=48,dy=128,dz=48] run tag @s add outside_border
execute if score world Border matches 1 positioned ~-37 ~-64 ~-37 as @e[tag=wave_mob] unless entity @s[tag=wave_mob,dx=73,dy=128,dz=73] run tag @s add outside_border
execute if score world Border matches 2 positioned ~-49 ~-64 ~-49 as @e[tag=wave_mob] unless entity @s[tag=wave_mob,dx=98,dy=128,dz=98] run tag @s add outside_border
execute if score world Border matches 3 positioned ~-74 ~-64 ~-74 as @e[tag=wave_mob] unless entity @s[tag=wave_mob,dx=148,dy=128,dz=148] run tag @s add outside_border
execute if score world Border matches 4 positioned ~-99 ~-64 ~-99 as @e[tag=wave_mob] unless entity @s[tag=wave_mob,dx=198,dy=128,dz=198] run tag @s add outside_border
execute if entity @e[tag=wave_mob,tag=outside_border] run function kiwi2:teleport_wave_mobs_go