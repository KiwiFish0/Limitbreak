title @a title {"bold":true,"color":"#936d42","text":"Goliath Man-Eater"}
title @a subtitle {"bold":true,"color":"#d1ac61","text":"The Burrowed Hunger"}
execute at @r[gamemode=survival] run summon spider ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Health:1024f,Tags:["wave_mob","spider_matron","boss"],Passengers:[{id:"minecraft:slime",DeathLootTable:"",Silent:1b,Invulnerable:1b,DeathTime:400,NoAI:0b,Health:9999999f,Size:0,Tags:["boss_check"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:9999999},{id:"minecraft:scale",base:0.01}]}],active_effects:[{id:"minecraft:regeneration",amplifier:2,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:6},{id:"minecraft:burning_time",base:0},{id:"minecraft:explosion_knockback_resistance",base:0.8},{id:"minecraft:follow_range",base:128},{id:"minecraft:knockback_resistance",base:0.8},{id:"minecraft:max_health",base:1024},{id:"minecraft:movement_speed",base:0.6},{id:"minecraft:scale",base:3.5},{id:"minecraft:step_height",base:2}]}
scoreboard players set world Boss_Death_Check 1
bossbar add boss_health {"bold":true,"color":"#936d42","text": "Goliath Man-Eater"}
bossbar set boss_health name {"bold":true,"color":"#936d42","text": "Goliath Man-Eater"}
bossbar set boss_health visible true
bossbar set boss_health players @a
bossbar set boss_health color red
bossbar set boss_health style notched_10
bossbar set boss_health max 1024
scoreboard objectives add weeping_widow_health dummy
execute at @e[tag=spider_matron,limit=1] run playsound entity.parrot.imitate.spider master @a[distance=..50] ~ ~ ~ 100 0
execute at @e[tag=spider_matron,limit=1] run playsound entity.phantom.bite master @a[distance=..50] ~ ~ ~ 100 0
execute at @e[tag=spider_matron,limit=1] run playsound entity.fox.screech master @a[distance=..50] ~ ~ ~ 100 0
execute at @e[tag=spider_matron,limit=1] run playsound entity.ravager.attack master @a[distance=..50] ~ ~ ~ 100 0
execute at @e[tag=spider_matron,limit=1] run playsound entity.ender_dragon.growl master @a[distance=..50] ~ ~ ~ 100 2
execute at @e[tag=spider_matron,limit=1] run playsound minecraft:entity.wither.break_block master @a[distance=..75] ~ ~ ~ 10 .6
execute at @e[tag=spider_matron,limit=1] run particle dust_pillar{block_state:"dirt"} ~ ~1 ~ 1 2 1 0.1 400
execute at @e[tag=spider_matron,limit=1] run particle dust_pillar{block_state:"cobblestone"} ~ ~1 ~ 1 2 1 0.1 400
time add 4000

# Goliath Man-Eater
# Health = 1024
# Atk Dmg = 8.5 AOE (4.5 block radius), hits every tick but due to player i-frames only hits every 10 or so ticks.
# Armor = 6 base
# Movement Speed = 0.6
# Extra: Invulnerable to fire.
# Skills:
# Roots itself on the ground and creates an increasingly large cobweb if a player touches it, they get a bunch of debuffs for a short duration but no damage, medium cooldown.
# Summons a web trap and randomly teleports it somewhere near the boss. Has particles that players can see, but in the midst of battle can be difficult to see. If a player gets close enough, they get encased in a dome of cobwebs and white wool with 4 spiders inside, medium cooldown.
# Upon entering phase 2 (50% hp), it starts to burrow underground, becoming completely invulnerable for a few seconds, then unburrows at the nearest player, launching them in the air and dealing high damage, medium cooldown.