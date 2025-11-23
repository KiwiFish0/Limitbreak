title @a title {"bold":true,"color":"#c96528","text":"The Cinderstorm"}
title @a subtitle {"bold":true,"color":"#813b10","text":"Charred Prophet of Calamity"}
summon blaze ~ ~ ~ {Silent:1b,Health:900f,Tags:["wave_mob","boss","cinderstorm"],Passengers:[{id:"minecraft:slime",DeathLootTable:"",Silent:1b,Invulnerable:1b,DeathTime:400,NoAI:0b,Health:9999999f,Size:0,Tags:["boss_check"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:9999999},{id:"minecraft:scale",base:0.01}]}],active_effects:[{id:"minecraft:regeneration",amplifier:2,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:900},{id:"minecraft:armor",base:20},{id:"minecraft:armor_toughness",base:5},{id:"minecraft:attack_damage",base:25},{id:"minecraft:scale",base:5},{id:"knockback_resistance",base:1},{id:"explosion_knockback_resistance",base:1}],PersistenceRequired:1b}
bossbar add boss_health {"bold":true,"color":"#c96528","text": "The Cinderstorm"}
bossbar set boss_health name {"bold":true,"color":"#c96528","text": "The Cinderstorm"}
bossbar set boss_health visible true
bossbar set boss_health players @a
bossbar set boss_health color yellow
bossbar set boss_health style notched_12
bossbar set boss_health max 900
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

# Cinderstorm
# Health = 900
# Attack Dmg = 8 AOE (10 blocks radius), hits every tick but due to player i-frames only hits every 10 or so ticks.
# Armor = 20
# Armor Toughness = 5
# Movement Speed = Can slowly move but even if it moves it doesnt change anything
# Skills:
# Passively burns blocks around it (sand to glass, grass to mud, logs to basalt, stones to magma), doesn't really do much other than visuals.
# Summons and teleports lava geysers randomly which deal medium damage to the players when near, maximum of 2 geysers can be present at a time, long cooldown.
# Makes small fireballs rain from the sky, deals very low damage and pretty hard to hit players too, mostly for burning the ground, short cooldown.
# Makes fireballs rain from the sky, deals low-medium damage, can break blocks and make terrain difficult to traverse, short cooldown.
# Summons a hellbat which passively flies over the arena, doesn't target players but if players get near it they get withered and take medium damage.
# Upon entering phase 2 (50% hp), summons 4 hellbats near the boss.