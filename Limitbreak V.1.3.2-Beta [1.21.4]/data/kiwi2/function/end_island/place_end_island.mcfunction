execute in minecraft:the_end positioned -10 64 -10 run place template kiwi2:end_island/central_portal
execute in minecraft:the_end positioned 10 64 -30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 30 64 -30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -30 64 30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -30 64 10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 10 64 -10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -10 64 10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 10 64 10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -30 64 -30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -10 64 -30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -30 64 -10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -50 64 -30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -50 64 -10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -50 64 10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -50 64 30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -10 64 30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 10 64 30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 30 64 30 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 30 64 10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 30 64 -10 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 30 64 -50 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 10 64 -50 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -10 64 -50 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -30 64 -50 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned -50 64 -50 run place template kiwi2:end_island/block_1
execute in minecraft:the_end positioned 0 74 0 run summon armor_stand 0 74 0 {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["end_island_center_marker"]}

execute in minecraft:the_end run function kiwi2:end_island/place_end_crystals
execute in minecraft:the_end run summon ender_dragon 0 128 0 {DragonPhase:0}
execute in minecraft:the_end run forceload remove all