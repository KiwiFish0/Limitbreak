summon armor_stand ~ ~ ~ {Marker:1b,Tags:["cinderstorm_fire_cloak"],Invisible:1b,Invulnerable:1b}
scoreboard players set @s cinderstorm_rod_cooldown 2400
scoreboard players set @e[type=armor_stand,tag=cinderstorm_fire_cloak,limit=1,sort=nearest] cinderstorm_fire_cloak_dur 400
title @s actionbar {"text": "The flames divide...", "color": "#c96528","bold":true}
playsound minecraft:entity.blaze.shoot master @a[distance=..3] ~ ~ ~ 1 2
function kiwi:enchantment_function/cinderstorm_rod_fire_cloak_dur