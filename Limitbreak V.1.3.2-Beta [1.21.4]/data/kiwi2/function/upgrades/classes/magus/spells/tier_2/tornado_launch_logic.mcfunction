execute store result score .x velocity run data get entity @s Pos[0] 3000
execute store result score .y velocity run data get entity @s Pos[1] 3000
execute store result score .z velocity run data get entity @s Pos[2] 3000
 
tp @s ^ ^ ^0.2
 
execute store result score .dx velocity run data get entity @s Pos[0] 3000
execute store result score .dy velocity run data get entity @s Pos[1] 3000
execute store result score .dz velocity run data get entity @s Pos[2] 3000
 
execute store result entity @s Motion[0] double 0.004 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.004 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.004 run scoreboard players operation .dz velocity -= .z velocity

data merge entity @s {Invulnerable:1b,Silent:1b,Tags:["magus_tornado"],attributes:[{id:"minecraft:gravity",base:1}]}
effect give @s resistance infinite 255 true
effect give @s invisibility infinite 255 true
scoreboard players set @s magus_tornado_duration 400

function kiwi2:upgrades/classes/magus/spells/tier_2/tornado_fx