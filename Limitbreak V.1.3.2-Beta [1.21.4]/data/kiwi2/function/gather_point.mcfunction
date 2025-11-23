setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~
scoreboard players set @s Gather_Point 0
scoreboard players enable @a Gather_Point
kill @e[tag=gather_point]
worldborder center ~ ~
title @a actionbar {"color":"yellow","text":"A new gather point has been set."}
playsound minecraft:entity.arrow.hit_player master @a[distance=..15] ~ ~ ~ 1 .8
summon item_display ~ ~5 ~ {Glowing:1b,CustomNameVisible:0b,view_range:100f,billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,90f,0f,1f],translation:[-0.2f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:iron_sword",count:1},Tags:["gather_point"]}
summon item_display ~ ~5 ~ {Glowing:1b,CustomNameVisible:0b,view_range:100f,billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.2f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:iron_sword",count:1},Tags:["gather_point"]}
summon text_display ~ ~6 ~ {alignment:center,CustomNameVisible:1b,view_range:100f,billboard:"vertical",CustomName:'{"bold":true,"color":"yellow","text":"Gather Point"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},Tags:["gather_point"]}