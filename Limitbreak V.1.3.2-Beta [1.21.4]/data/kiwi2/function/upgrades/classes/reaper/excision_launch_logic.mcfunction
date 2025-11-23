execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000
 
tp @s ^ ^ ^0.2
 
execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000
 
execute if entity @s store result entity @s Motion[0] double 0.012 run scoreboard players operation .dx velocity -= .x velocity
execute if entity @s store result entity @s Motion[1] double 0.012 run scoreboard players operation .dy velocity -= .y velocity
execute if entity @s store result entity @s Motion[2] double 0.012 run scoreboard players operation .dz velocity -= .z velocity

tp @s ^ ^ ^1

execute store result storage kiwi:excision_damage pos.x float 1 run scoreboard players get @p[scores={limitbreak_chosen_class=6}] reaper_excision_damage
data merge entity @s {Tags:["reaper_excision_marker"],Invisible:1b,Invulnerable:1b,attributes:[{id:"gravity",base:0.02}]}
