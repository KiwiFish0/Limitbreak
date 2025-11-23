title @a title {"bold":true,"color":"#c96528","text":"The Cinderstorm"}
title @a subtitle {"bold":true,"color":"#813b10","text":"Charred Prophet of Calamity"}

summon blaze ~ ~ ~ {Silent:1b,Health:750f,Tags:["wave_mob","boss","cinderstorm"],attributes:[{id:"minecraft:max_health",base:750},{id:"minecraft:armor",base:20},{id:"minecraft:armor_toughness",base:5},{id:"minecraft:attack_damage",base:25},{id:"minecraft:scale",base:5},{id:"knockback_resistance",base:1},{id:"explosion_knockback_resistance",base:1}],PersistenceRequired:1b}

bossbar add boss_health {"bold":true,"color":"#c96528","text": "The Cinderstorm"}
bossbar set boss_health name {"bold":true,"color":"#c96528","text": "The Cinderstorm"}
bossbar set boss_health visible true
bossbar set boss_health players @a
bossbar set boss_health color yellow
bossbar set boss_health style notched_12
bossbar set boss_health max 750
scoreboard objectives add cinderstorm_health dummy
execute as @e[type=blaze,tag=boss,tag=cinderstorm,limit=1] run scoreboard players set @s mob_first_skill_counter 1999
stopsound @a
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:block.portal.travel master @a[distance=..500] ~ ~ ~ 10 2
weather clear 1d