# execute store result score .x velocity run data get entity @s Pos[0] 3000
# execute store result score .y velocity run data get entity @s Pos[1] 3000
# execute store result score .z velocity run data get entity @s Pos[2] 3000
 
# tp @s ^ ^ ^0.2
 
# execute store result score .dx velocity run data get entity @s Pos[0] 3000
# execute store result score .dy velocity run data get entity @s Pos[1] 3000
# execute store result score .dz velocity run data get entity @s Pos[2] 3000
 
# execute store result entity @s Motion[0] double 0.008 run scoreboard players operation .dx velocity -= .x velocity
# execute store result entity @s Motion[1] double 0.008 run scoreboard players operation .dy velocity -= .y velocity
# execute store result entity @s Motion[2] double 0.008 run scoreboard players operation .dz velocity -= .z velocity

data merge entity @s {Invulnerable:1b,Silent:1b,Tags:["magus_ice_arrow"],block_state:{Name:"ice"},transformation:[0.071f,-0.071f,0f,0f,0.071f,0.071f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],teleport_duration:1}
scoreboard players set @s magus_ice_arrows_duration 40
execute if predicate kiwi2:chance_random_10 run tp @s ~4 ~ ~
execute if predicate kiwi2:chance_random_10 run tp @s ~4 ~ ~
execute if predicate kiwi2:chance_random_10 run tp @s ~ ~2 ~
execute if predicate kiwi2:chance_random_10 run tp @s ~-4 ~ ~
execute if predicate kiwi2:chance_random_10 run tp @s ~4 ~ ~
function kiwi2:upgrades/classes/magus/spells/tier_3/ice_arrows_launch_particles
function kiwi2:upgrades/classes/magus/spells/tier_3/ice_arrows_fx