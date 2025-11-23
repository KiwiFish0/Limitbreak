execute at @r run summon spider ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Health:900f,Tags:["wave_mob","spider_matron","boss"],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:400,NoAI:0b,Health:9999999f,Size:0,Tags:["boss_check"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:199999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:9999999},{id:"minecraft:scale",base:0.01}]}],active_effects:[{id:"minecraft:regeneration",amplifier:2,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:armor",base:15},{id:"minecraft:burning_time",base:0},{id:"minecraft:explosion_knockback_resistance",base:0.8},{id:"minecraft:follow_range",base:128},{id:"minecraft:knockback_resistance",base:0.8},{id:"minecraft:max_health",base:900},{id:"minecraft:movement_speed",base:0.6},{id:"minecraft:scale",base:3.5},{id:"minecraft:step_height",base:2}]}

# Type: Spider

# Max HP: 900f (450 Hearts)
# Armor: 6
# Atk Dmg: 8.5 (4.75 Hearts) (Constant Area Damage)
# Atk KB: 0
# Scale: 3.5
# Step Height: 1
# KB Resist: 0.8

# Abilities

# Passive:  Passively deals 8.5 area damage every tick in a 4.5 block radius.
# Skill 1:  Creates a giant web on the ground, which grows to 19 blocks in diameter in a span of 90 ticks.
#           Being touched by the web gives hunger 6, slowness 4, blindness 6, weaving, and infested.
# Skill 2:  Summons a web trap and teleports it spreads it around a 20x20 block area. If a player gets within 3 blocks
#           of the trap, it will encase the player inside an egg from white wool with cobwebs and spiders inside.
#           