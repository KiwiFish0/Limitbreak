function kiwi2:custom_mobs_fx/cinderstorm_pillars
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 0
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 10 0
playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 10 0
particle soul_fire_flame ~ ~4 ~ 2 2 2 0.3 500
tellraw @a {"color":"#D9871C","text":"The storm intensifies. The air is burning."}

summon bat ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,DeathTime:0,Health:999999f,Tags:["cinderstorm_tornado","wave_mob"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:999999},{id:"burning_time",base:0}]}
summon bat ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,DeathTime:0,Health:999999f,Tags:["cinderstorm_tornado","wave_mob"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:999999},{id:"burning_time",base:0}]}
summon bat ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,DeathTime:0,Health:999999f,Tags:["cinderstorm_tornado","wave_mob"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:999999},{id:"burning_time",base:0}]}
summon bat ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,DeathTime:0,Health:999999f,Tags:["cinderstorm_tornado","wave_mob"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199999980,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:999999},{id:"burning_time",base:0}]}