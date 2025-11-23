title @a title {"bold":true,"color":"#44C8E3","text":"Forsaken Lich"}
title @a subtitle {"bold":true,"color":"#256C7A","text":"Bound in Chains, Unyielding in Will"}
execute at @r[gamemode=survival] run summon skeleton ~ ~ ~ {NoGravity:0b,DeathTime:400,PersistenceRequired:1b,CanPickUpLoot:0b,Health:1024f,Tags:["wave_mob","forsaken_lich","no_glowing_wave_mob","boss"],Passengers:[{id:"minecraft:slime",DeathLootTable:"",Silent:1b,Invulnerable:1b,DeathTime:400,NoAI:1b,Health:9999999f,Size:0,Tags:["boss_check"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:9999999},{id:"minecraft:scale",base:0.01}]},{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["forsaken_lich_fx","controller_mob"]}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":4201020}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1429686132,1161250764,-1347065461,1247222287],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI1MzI5ODMxOTJjZjZkOTYxM2QzNjMxZTIyZDI2Y2IyZjFjOWFlNzJmN2M0OTA5Njg5MDM2ZTJlNWNhNDg5MiJ9fX0="}]}}}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:armor",base:15},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:1024},{id:"minecraft:movement_speed",base:0},{id:"minecraft:scale",base:2},{id:"minecraft:explosion_knockback_resistance",base:1}]}
execute at @r[gamemode=survival] run spreadplayers ~ ~ 1 20 false @e[type=skeleton,tag=forsaken_lich]
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run particle soul_fire_flame ~ ~1 ~ 1 1 1 0.2 250
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run particle soul ~ ~1 ~ 1 1 1 0.2 250
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run playsound minecraft:entity.ravager.stunned master @a[distance=..500] ~ ~ ~ 10000 0.1
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run playsound minecraft:entity.allay.hurt master @a[distance=..500] ~ ~ ~ 10000 0.1
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run playsound minecraft:block.chain.break master @a[distance=..500] ~ ~ ~ 10000 0.1
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..500] ~ ~ ~ 10000 0.5
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run playsound minecraft:entity.wither.break_block master @a[distance=..500] ~ ~ ~ 10000 0.5
execute at @e[type=skeleton,tag=forsaken_lich,tag=boss,limit=1] run playsound minecraft:entity.wither.ambient master @a[distance=..500] ~ ~ ~ 10000 0.5
scoreboard players set world Boss_Death_Check 1
bossbar add boss_health {"bold":true,"color":"#44C8E3","text": "Forsaken Lich"}
bossbar set boss_health name {"bold":true,"color":"#44C8E3","text": "Forsaken Lich"}
bossbar set boss_health visible true
bossbar set boss_health players @a
bossbar set boss_health color blue
bossbar set boss_health style notched_12
bossbar set boss_health max 1024
scoreboard objectives add forsaken_lich_health dummy
time add 4000
scoreboard players set @e[type=skeleton,tag=forsaken_lich,limit=1] mob_first_skill_counter 180
scoreboard players set @e[type=skeleton,tag=forsaken_lich,limit=1] mob_second_skill_counter 180
scoreboard players set @e[type=skeleton,tag=forsaken_lich,limit=1] mob_third_skill_counter 180
scoreboard players set @e[type=skeleton,tag=forsaken_lich,limit=1] mob_fourth_skill_counter 180
scoreboard players set @e[type=skeleton,tag=forsaken_lich,limit=1] mob_fifth_skill_counter 180

# Forsaken Lich
# Health = 1024
# Attack Dmg = 0 (Phase 3 increases to 15)
# Armor = 15
# Movement Speed = 0 (Phase 3 increases to 0.4)
# Skills:
# Summons 2 skeletons & 2 zombies with iron weapons near itself, no armor, 10-20 second cooldown (very low-low cooldown)
# Summons a lost soul (vex), that heals on medium cooldown, medium cooldown.
# Summons an Undead Knight (same stats as the boss), long cooldown (2-3 minutes)
# Is able to switch players' position with one another, long cooldown.
# Upon entering phase 2, starts being able to teleport short distances randomly, long cooldown.
# Upon entering phase 3, shackles are released and is able to move freely and attack players alongside its summons.