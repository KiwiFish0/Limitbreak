# Undead Knight --> Day 10
execute if score world Day matches 10 at @s run summon lightning_bolt ~ ~ ~
execute if score world Day matches 10 at @s run particle soul_fire_flame ~ ~1 ~ 1 1 1 0.2 250
execute if score world Day matches 10 at @s run particle soul ~ ~1 ~ 1 1 1 0.2 250
execute if score world Day matches 10 at @s run playsound minecraft:entity.allay.ambient_without_item master @a[distance=..200] ~ ~ ~ 10000 0.1 1
execute if score world Day matches 10 at @s run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 1000 0.
execute if score world Day matches 10 at @s run scoreboard players set world Rollback_Day 10
execute if score world Day matches 10 at @s run setblock ~ ~ ~ chest{LootTable:"kiwi2:blocks/undead_knight_boss_chest"} replace

# Goliath Man-Eater --> Day 20
execute if score world Day matches 20 at @s run summon lightning_bolt ~ ~ ~
execute if score world Day matches 20 at @s run particle dust_pillar{block_state:"minecraft:red_concrete"} ~ ~2 ~ 3 1 3 1 300
execute if score world Day matches 20 at @s run particle crimson_spore ~ ~1 ~ 2 1 2 0.2 500
execute if score world Day matches 20 at @s run playsound entity.parrot.imitate.spider master @a[distance=..500] ~ ~ ~ 1000 0
execute if score world Day matches 20 at @s run playsound entity.phantom.bite master @a[distance=..500] ~ ~ ~ 1000 0
execute if score world Day matches 20 at @s run playsound entity.fox.screech master @a[distance=..500] ~ ~ ~ 1000 0
execute if score world Day matches 20 at @s run playsound entity.ravager.attack master @a[distance=..500] ~ ~ ~ 1000 0
execute if score world Day matches 20 at @s run playsound entity.ender_dragon.growl master @a[distance=..500] ~ ~ ~ 1000 2
execute if score world Day matches 20 at @s run kill @e[tag=encase_marker,type=armor_stand]
execute if score world Day matches 20 at @s run scoreboard players set world Rollback_Day 20
execute if score world Day matches 20 at @s run setblock ~ ~ ~ chest{LootTable:"kiwi2:blocks/goliath_man_eater_chest"} replace

# Cinderstorm --> Day 30
execute if score world Day matches 30 at @s run summon lightning_bolt ~ ~ ~
execute if score world Day matches 30 at @s run particle soul_fire_flame ~ ~ ~ 2 1 2 0.1 150
execute if score world Day matches 30 at @s run particle flame ~ ~ ~ 2 1 2 0.1 150
execute if score world Day matches 30 at @s run particle trial_spawner_detection ~ ~ ~ 2 1 2 0.2 150
execute if score world Day matches 30 at @s run particle trial_spawner_detection_ominous ~ ~ ~ 2 1 2 0.2 150
execute if score world Day matches 30 at @s run playsound entity.blaze.hurt master @a[distance=..48] ~ ~4 ~ 1 0
execute if score world Day matches 30 at @s run playsound minecraft:entity.blaze.shoot master @a[distance=..500] ~ ~ ~ 10 0
execute if score world Day matches 30 at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..500] ~ ~ ~ 10 0
execute if score world Day matches 30 at @s run kill @e[type=area_effect_cloud,tag=lava_geyser]
execute if score world Day matches 30 at @s run kill @e[type=bat,tag=cinderstorm_tornado]
execute if score world Day matches 30 at @s run kill @e[type=small_fireball,tag=cinderstorm_rain]
execute if score world Day matches 30 at @s run kill @e[type=fireball,tag=cinderstorm_meteor]
execute if score world Day matches 30 at @s run tag @a remove cinderstorm_link
execute if score world Day matches 30 at @s run tag @a remove cinderstorm_link_activated
execute if score world Day matches 30 at @s run scoreboard players set world Rollback_Day 30
execute if score world Day matches 30 at @s run setblock ~ ~ ~ chest{LootTable:"kiwi2:blocks/cinderstorm_chest"} replace

# Forsaken Lich --> Day 40
execute if score world Day matches 40 at @s run summon lightning_bolt ~ ~ ~
execute if score world Day matches 40 at @s run particle soul_fire_flame ~ ~1 ~ 1 1 1 0.2 250
execute if score world Day matches 40 at @s run particle soul ~ ~1 ~ 1 1 1 0.2 250
execute if score world Day matches 40 at @s run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 1000 0.
execute if score world Day matches 40 at @s run scoreboard players set world Rollback_Day 40
execute if score world Day matches 40 at @s run kill @e[tag=forsaken_lich_soul_well]
execute if score world Day matches 40 at @s run setblock ~ ~ ~ chest{LootTable:"kiwi2:blocks/forsaken_lich_boss_chest"} replace

# Phantom Sovereign --> Day 50
execute if score world Day matches 50 at @s run summon lightning_bolt ~ ~ ~
execute if score world Day matches 50 at @s run particle explosion_emitter ~ ~ ~ 5 1 5 0.2 20
execute if score world Day matches 50 at @s run particle soul ~ ~ ~ 5 1 5 0.2 550
execute if score world Day matches 50 at @s run playsound entity.ender_dragon.death master @a ~ ~ ~ 10000 0
execute if score world Day matches 50 at @s run tellraw @a [{"color":"#490086","text":"[Phantom Sovereign]","bold": true},{"text": " Your tenacity was honorable.","color": "#4F3BD1","bold": false}]
execute if score world Day matches 50 at @s run schedule function kiwi2:datapack_finish 300t

# All bosses logic
scoreboard players set world Boss_Death_Check 0
bossbar set boss_health visible false
kill @s