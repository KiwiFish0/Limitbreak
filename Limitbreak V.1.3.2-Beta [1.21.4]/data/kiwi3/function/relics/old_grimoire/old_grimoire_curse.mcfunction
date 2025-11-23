effect give @e[type=!player,type=!item,type=!#boat,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..15,sort=nearest,limit=15] wither 15 2 true
effect give @e[type=!player,type=!item,type=!#boat,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..15,sort=nearest,limit=15] slowness 15 1 true
tellraw @a[distance=..15] [{"color":"white","text":"<"},{"color":"green","selector":"@s"},{"color":"white","text":">"},{"bold":true,"color":"red","text":" Exsecratio!"}]
playsound minecraft:entity.elder_guardian.curse master @a[distance=..25] ~ ~ ~ 1 0.1
playsound minecraft:entity.fox.screech master @a[distance=..10] ~ ~ ~ 1 0.1 1
particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 1 150
damage @s 10 magic by @s from @s
execute at @e[type=!player,type=!item,type=!#boat,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..15,sort=nearest,limit=15] run particle minecraft:sculk_soul ~ ~1.2 ~ 0.5 0.5 0.5 0.05 25
execute at @e[type=!player,type=!item,type=!#boat,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..15,sort=nearest,limit=15] run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0.5 0.75 0.5 0.1 25