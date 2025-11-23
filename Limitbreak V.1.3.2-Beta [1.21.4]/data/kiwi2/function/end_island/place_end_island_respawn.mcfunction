kill @e[type=end_crystal]
execute in minecraft:the_end run effect give @a darkness 5 5 true
execute in minecraft:the_end run playsound entity.ender_dragon.growl master @a ~ ~ ~ 10000 1
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

execute in minecraft:the_end run function kiwi2:end_island/place_end_crystals
execute in minecraft:the_end run summon ender_dragon 0 128 0 {DragonPhase:0}
execute in minecraft:the_end run summon lightning_bolt 0 89 0
execute in minecraft:the_end run summon lightning_bolt 0 89 0
execute in minecraft:the_end run summon lightning_bolt 0 89 0
execute in minecraft:the_end run summon lightning_bolt 0 89 0
execute in minecraft:the_end run summon lightning_bolt 0 89 0