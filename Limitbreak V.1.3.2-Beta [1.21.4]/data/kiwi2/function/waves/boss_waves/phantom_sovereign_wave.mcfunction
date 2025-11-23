title @a title {"bold":true,"color":"#490086","text":"The Phantom Sovereign"}
title @a subtitle {"bold":true,"color":"#8200b5","text":"Eclipsed Ruler of Nyxian Nights"}
summon phantom ~ ~25 ~ {DeathTime:0s,DeathLootTable:"kiwi2:entities/80to100_point",Passengers:[{id:"minecraft:slime",DeathLootTable:"",Silent:1b,Invulnerable:1b,DeathTime:20s,NoAI:0b,Health:9999999f,Size:0,Tags:["boss_check"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:9999999},{id:"minecraft:scale",base:0.01}]}],active_effects:[{id:"minecraft:regeneration",amplifier:2,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],PersistenceRequired:1b,NoAI:1b,Health:2500f,Size:64,Tags:["wave_mob","phantom_sovereign","no_glowing_wave_mob","boss"],active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:399999600,show_particles:0b}],attributes:[{id:"minecraft:armor",base:30},{id:"minecraft:follow_range",base:128},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:2500},{id:"minecraft:scale",base:3},{id:"minecraft:burning_time",base:0}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"kiwi:enchantment_that_makes_you_invulnerable_to_damage_that_bypasses_cooldown":1}}}},{}]}
execute at @e[type=phantom,tag=phantom_sovereign,tag=boss,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["phantom_sovereign_damage_marker"]}
execute at @e[type=phantom,tag=phantom_sovereign,tag=boss,limit=1] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 5 5 5 0.7 750
execute at @e[type=phantom,tag=phantom_sovereign,tag=boss,limit=1] run particle gust_emitter_large ~ ~1 ~ 15 15 15 1 50 normal
execute at @e[type=phantom,tag=phantom_sovereign,tag=boss,limit=1] run function kiwi2:custom_mobs_fx/phantom_sovereign_screech
tag @e[type=phantom,tag=phantom_sovereign,limit=1] add phantom_sovereign_phase_1
scoreboard players set world Boss_Death_Check 1
scoreboard objectives add phantom_sovereign_health dummy
bossbar add boss_health {"bold":true,"color":"#8200b5","text": "Phantom Sovereign"}
bossbar set boss_health name {"bold":true,"color":"#8200b5","text": "Phantom Sovereign"}
bossbar set boss_health visible true
bossbar set boss_health players @a
bossbar set boss_health color purple
bossbar set boss_health style notched_20
bossbar set boss_health max 1024
scoreboard objectives add phantom_sovereign_health dummy
time add 4000

# Phantom Sovereign
# Health = 1024
# Attack Damage = Doesn't attack by itself.
# Armor = 30
# Extra: Invulnerable to damage that bypasses cooldown, invulnerable to fire.
# Skills
# Summons a regular phantom every 10 seconds
# Summons a phantom broodmother every 1 minute, phantom broodmothers are slightly stronger phantoms that can spawn a bunch of tiny phantoms that explode near the player dealing damage only 1 damage but it bypasses i-frames
# Every 1.5 minutes summons 2 nyxian winds, vexes which propel a player upwards if its close enough to the player, very hard to hit as they're invisible and only have particles around them.
# Every minute does a telegraphed lightning attack, picks 5 locations to strike, and it strikes 3 times (15 times total), deals high damage if it hits a player, but not hard to dodge.
# In phase 2, the lightning attack is replaced by a meteor shower attack, same mechanics but it instead spawns meteors that fall from the sky.
# Upon entering phase 3, becomes invulnerable to damage and watches from the sky above, summons a lot of strong mobs for the players to fight.
# In phase 3, the lightning and meteor shower attack happen simultaneously, wreaking havoc.