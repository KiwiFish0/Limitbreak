data merge entity @s {Invulnerable:1b,Silent:1b,Tags:["enemy_magus_ice_arrow"],block_state:{Name:"ice"},transformation:[0.071f,-0.071f,0f,0f,0.071f,0.071f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],teleport_duration:1}
scoreboard players set @s magus_ice_arrows_duration 40
execute if predicate kiwi2:chance_random_10 run tp @s ~4 ~ ~
execute if predicate kiwi2:chance_random_10 run tp @s ~4 ~ ~
execute if predicate kiwi2:chance_random_10 run tp @s ~ ~2 ~
execute if predicate kiwi2:chance_random_10 run tp @s ~-4 ~ ~
execute if predicate kiwi2:chance_random_10 run tp @s ~4 ~ ~
function kiwi2:custom_mobs_fx/magi/ice_arrows_launch_particles
function kiwi2:custom_mobs_fx/magi/ice_arrows_fx