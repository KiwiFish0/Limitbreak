execute if score @s Points matches 1000..3499 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1000 .75 1
execute if score @s Points matches 1000..3499 run effect give @s resistance 5 255 true
execute if score @s Points matches 1000..3499 run effect give @s blindness 3 1 true
execute if score @s Points matches 1000..3499 at @s run summon lightning_bolt
execute if score @s Points matches 1000..3499 at @s run particle trial_spawner_detection ~ ~1 ~ 0.25 0.5 0.25 0.25 100
execute if score @s Points matches 1000..3499 at @s run scoreboard players set Sequence10 SequenceCount 1

execute if score @s Points matches 3500..6999 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1000 .6 1
execute if score @s Points matches 3500..6999 run effect give @s resistance 5 255 true
execute if score @s Points matches 3500..6999 run effect give @s darkness 3 1 true
execute if score @s Points matches 3500..6999 at @s run summon lightning_bolt
execute if score @s Points matches 3500..6999 at @s run particle electric_spark ~ ~1 ~ 0.25 0.5 0.25 0.25 100
execute if score @s Points matches 3500..6999 at @s run scoreboard players set Sequence9 SequenceCount 1

execute if score @s Points matches 7000..11499 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1000 .5 1
execute if score @s Points matches 7000..11499 run effect give @s resistance 5 255 true
execute if score @s Points matches 7000..11499 run effect give @s darkness 3 1 true
execute if score @s Points matches 7000..11499 at @s run summon lightning_bolt
execute if score @s Points matches 7000..11499 at @s run particle minecraft:dust_plume ~ ~1 ~ 0.25 0.5 0.25 0.25 100
execute if score @s Points matches 7000..11499 at @s run scoreboard players set Sequence8 SequenceCount 1

execute if score @s Points matches 11500.. run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1000 .4 1
execute if score @s Points matches 11500.. run effect give @s resistance 5 255 true
execute if score @s Points matches 11500.. run effect give @s darkness 3 1 true
execute if score @s Points matches 11500.. at @s run summon lightning_bolt
execute if score @s Points matches 11500.. at @s run particle minecraft:end_rod ~ ~1 ~ 0.25 0.5 0.25 0.25 100
execute if score @s Points matches 11500.. at @s run scoreboard players set Sequence7 SequenceCount 1