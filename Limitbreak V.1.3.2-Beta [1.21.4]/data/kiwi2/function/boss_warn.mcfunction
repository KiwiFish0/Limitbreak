# Prevent normal waves from spawning
scoreboard players set world Boss_Wave_Check 1

# Undead Knight
execute if score world Day matches 10 run tellraw @a [{"bold":true,"color":"#32806D","italic":false,"obfuscated":true,"text":"X"},{"bold":false,"color":"#57DEBE","italic":false,"obfuscated":false,"text":" A chill settles in the air...the dead do not rest. "},{"bold":true,"color":"#32806D","italic":false,"obfuscated":true,"text":"X"}]
execute if score world Day matches 10 run playsound minecraft:entity.allay.death master @a ~ ~ ~ 10000 .75 .5
execute if score world Day matches 10 run playsound minecraft:entity.allay.ambient_without_item master @a ~ ~ ~ 1 .1 1

# Goliath Man-Eater
execute if score world Day matches 20 run tellraw @a [{"bold":true,"color":"#bb2b15","italic":false,"obfuscated":true,"text":"X"},{"bold":false,"color":"#ac3300","italic":false,"obfuscated":false,"text":" The ground groans with a primal hunger... "},{"bold":true,"color":"#bb2b15","italic":false,"obfuscated":true,"text":"X"}]
execute if score world Day matches 20 run playsound entity.parrot.imitate.spider master @a ~ ~ ~ 1000000 0
execute if score world Day matches 20 run playsound entity.phantom.bite master @a ~ ~ ~ 1000000 0
execute if score world Day matches 20 run playsound entity.ravager.attack master @a ~ ~ ~ 1000000 0

# Cinderstorm
execute if score world Day matches 30 run tellraw @a [{"bold":true,"color":"#bb2b15","italic":false,"obfuscated":true,"text":"X"},{"bold":false,"color":"#c97106","italic":false,"obfuscated":false,"text":" The horizon blisters. A storm is coming... "},{"bold":true,"color":"#bb2b15","italic":false,"obfuscated":true,"text":"X"}]
execute if score world Day matches 30 run playsound block.portal.ambient master @a ~ ~ ~ 1000000 0
execute if score world Day matches 30 run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1000000 2
execute if score world Day matches 30 run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1000000 2
execute if score world Day matches 30 run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1000000 2
execute if score world Day matches 30 run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1000000 2
execute if score world Day matches 30 run playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1000000 2
execute if score world Day matches 30 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1000000 0

# Forsaken Lich
execute if score world Day matches 40 run tellraw @a [{"bold":true,"color":"red","obfuscated":true,"text":"X"},{"bold":false,"color":"#E0332D","obfuscated":false,"text":" An ancient evil has awakened. Shackles groan under forgotten magic. "},{"bold":true,"color":"red","obfuscated":true,"text":"X"}]
execute if score world Day matches 40 run playsound minecraft:block.chain.break master @a ~ ~ ~ 10000 .1
execute if score world Day matches 40 run playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 10000 .1

# Phantom Sovereign
execute if score world Day matches 50 run tellraw @a [{"bold":true,"color":"#2d0a87","obfuscated":true,"text":"X"},{"bold":false,"color":"#4512c7","obfuscated":false,"text":" The night sky warps. There's a presence in the stars... "},{"bold":true,"color":"#2d0a87","obfuscated":true,"text":"X"}]
execute if score world Day matches 50 run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.1 1