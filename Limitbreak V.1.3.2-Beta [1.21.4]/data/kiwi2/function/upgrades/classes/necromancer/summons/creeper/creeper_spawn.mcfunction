scoreboard objectives add creeper_identifier dummy
scoreboard objectives add necromancer_summon_count dummy
scoreboard objectives add necromancer_summon_cost dummy
scoreboard objectives add necromancer_summon_reserve dummy
scoreboard objectives add necromancer_summon_count_post dummy

scoreboard players set @s necromancer_summon_cost 20
scoreboard players set @s necromancer_summon_reserve 2
scoreboard players operation @s necromancer_summon_count_post = @s necromancer_summon_count
scoreboard players operation @s necromancer_summon_count_post += @s necromancer_summon_reserve

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run tag @s add necromancer_summon_creeper

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity as @e[type=creeper,tag=creeper] at @s if score @s creeper_identifier = @a[tag=necromancer_summon_creeper,limit=1] creeper_identifier run scoreboard players add @s creeper_identifier 1
execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity as @e[type=slime,tag=creeper_check] at @s if score @s creeper_identifier = @a[tag=necromancer_summon_creeper,limit=1] creeper_identifier run scoreboard players add @s creeper_identifier 1

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run scoreboard players add world creeper_identifier 1
execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run scoreboard players operation @s creeper_identifier = world creeper_identifier

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run summon creeper ~ ~ ~ {DeathLootTable:"",CustomNameVisible:1b,Team:"Player_Glow",PersistenceRequired:1b,DeathLootTable:"",Tags:["necromancer_summon","creeper","summon_init","despawn_value_2"],Passengers:[{id:"minecraft:slime",DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["necromancer_summon_check","creeper_check","creeper_check_init","despawn_value_2"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:1999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:99999},{id:"minecraft:scale",base:0.0625}]}],CustomName:'"[ Creeper ]"',attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:follow_range",base:512}]}
execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run tag @s add has_summoned_creeper
execute if entity @s[tag=has_summoned_creeper] run playsound minecraft:block.trial_spawner.spawn_mob master @a[distance=..25] ~ ~ ~ 1 0.75

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count >= @s necromancer_summon_capacity run execute as @n[type=creeper,tag=necromancer_summon,tag=creeper,tag=summon_init,limit=1] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 15
execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count >= @s necromancer_summon_capacity run execute as @n[type=creeper,tag=necromancer_summon,tag=creeper,tag=summon_init,limit=1] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.8 0.5 0.8 0.05 30

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run execute as @n[type=creeper,tag=necromancer_summon,tag=creeper,tag=summon_init,limit=1] at @s run scoreboard players operation @s creeper_identifier = @p[tag=necromancer_summon_creeper,limit=1] creeper_identifier
execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run execute as @n[type=slime,tag=creeper_check_init,limit=1] at @s run scoreboard players operation @s creeper_identifier = @p[tag=necromancer_summon_creeper,limit=1] creeper_identifier

execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run tag @n[type=creeper,tag=necromancer_summon,tag=creeper,tag=summon_init,limit=1] remove summon_init
execute unless score @s necromancer_current_souls < @s necromancer_summon_cost unless score @s necromancer_summon_count_post > @s necromancer_summon_capacity run tag @n[type=slime,tag=creeper_check_init,limit=1] remove creeper_check_init

execute if score @s necromancer_current_souls < @s necromancer_summon_cost run function kiwi2:upgrades/classes/necromancer/summons/all_summons/not_enough_souls_warning
execute if score @s necromancer_summon_count >= @s necromancer_summon_capacity run function kiwi2:upgrades/classes/necromancer/summons/all_summons/maximum_summon_capacity_warning
execute if score @s necromancer_summon_count_post > @s necromancer_summon_capacity run function kiwi2:upgrades/classes/necromancer/summons/all_summons/not_enough_summon_capacity_warning
execute if entity @s[tag=has_summoned_creeper] run scoreboard players add @s necromancer_summon_count 2
execute if entity @s[tag=has_summoned_creeper] run scoreboard players operation @s necromancer_current_souls -= @s necromancer_summon_cost
execute if entity @s[tag=has_summoned_creeper] run function kiwi2:upgrades/classes/necromancer/summons/all_summons/summon_update_souls
execute if entity @s[tag=has_summoned_creeper] run tag @s remove necromancer_summon_creeper
execute if entity @s[tag=has_summoned_creeper] run tag @s remove has_summoned_creeper