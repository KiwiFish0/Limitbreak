title @a title [{"text":"Undead Knight","color":"#49a390","bold":true}]
title @a subtitle [{"text":"The Forsaken Sentinel of The Damned","color":"#801a00","bold":true}]
playsound entity.wither.spawn master @a[distance=..200] ~ ~ ~ 1 0.5 1
execute at @r[gamemode=survival] run summon zombie ~ ~50 ~ {Silent:1b,DeathLootTable:"kiwi2:entities/10_point",PersistenceRequired:1b,Health:200f,Tags:["wave_mob","undead_knight","boss"],Passengers:[{id:"minecraft:slime",DeathLootTable:"",Silent:1b,Invulnerable:1b,DeathTime:400,NoAI:0b,Health:9999999f,Size:0,Tags:["boss_check"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:9999999},{id:"minecraft:scale",base:0.01}]}],HandItems:[{id:"minecraft:netherite_sword",count:1},{id:"minecraft:shield",count:1}],ArmorItems:[{id:"minecraft:netherite_boots",count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:netherite_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"xDarklightx"}}}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:attack_damage",base:7},{id:"minecraft:follow_range",base:100},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:200},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:safe_fall_distance",base:10},{id:"minecraft:explosion_knockback_resistance",base:1}]}
execute at @r[gamemode=survival] run spreadplayers ~ ~ 1 20 false @e[type=zombie,tag=wave_mob,tag=undead_knight]
execute at @e[type=zombie,tag=undead_knight,tag=boss,limit=1] run particle soul_fire_flame ~ ~1 ~ 1 1 1 0.2 250
execute at @e[type=zombie,tag=undead_knight,tag=boss,limit=1] run particle soul ~ ~1 ~ 1 1 1 0.2 250
execute at @e[type=zombie,tag=undead_knight,tag=boss,limit=1] run playsound minecraft:entity.allay.ambient_without_item master @a[distance=..200] ~ ~ ~ 10000 0.1 1
scoreboard players set world Boss_Death_Check 1
bossbar add boss_health {"bold":true,"color":"#49a390","text": "Undead Knight"}
bossbar set boss_health name {"bold":true,"color":"#49a390","text": "Undead Knight"}
bossbar set boss_health visible true
bossbar set boss_health players @a
bossbar set boss_health color red
bossbar set boss_health style notched_6
bossbar set boss_health max 200
time add 4000

# Undead Knight
# Health = 200
# Atk Dmg = 10
# Movement Speed = 0.3
# Full Netherite Armor + 10 Base Armor
# Skills:
# Can switch positions with the player, short-medium cooldown
# Runs faster towards the player if the nearest player is far enough
# Can grab a player and cut them relentlessly, dealing high damage. The attack cannot be dodged but can be blocked.