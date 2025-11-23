title @a actionbar {"text": "The Sovereign whispers to the night...","color": "#4F3BD1"}
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1000 0

summon phantom ~ ~-25 ~ {active_effects:[{id:"glowing",amplifier:1,duration:999999}],DeathLootTable:"",Health:1200f,Size:32,Tags:["wave_mob","phantom_imperator","no_glowing_wave_mob","phantom_sovereign_phase_2.3"],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"kiwi:deflection":3}}}},{}],attributes:[{id:"minecraft:follow_range",base:128},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:1200},{id:"minecraft:burning_time",base:0}],PersistenceRequired:1b}

tag @s add phantom_sovereign_phase_2.2_complete