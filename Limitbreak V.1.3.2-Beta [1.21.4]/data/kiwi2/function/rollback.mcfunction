# Title and FX
effect give @a darkness 5 255 true
effect give @a resistance 10 255 true
effect give @a blindness 3 255 true
gamemode survival @a[gamemode=spectator]
playsound minecraft:block.portal.travel master @a ~ ~ ~ 10000 2
playsound minecraft:item.totem.use master @a ~ ~ ~ 10000 0.2
title @a title [{"color":"red","italic":false,"text":"You survived until Day "},{"score":{"name":"world","objective":"Day"}}]
title @a subtitle {"color":"white","text":"You have been sent back to the last checkpoint!"}

# Restore all players milestones & modifiers
execute as @a run schedule function kiwi2:points/point_milestones_regive_after_death 10s
schedule function kiwi2:upgrades/classes/class_modifiers_regive 10s
scoreboard players enable @a RestoreAttributes
scoreboard players enable @a Gather_Point

# Make all wave mobs disappear
tp @e[tag=wave_mob] ~ ~-385 ~
kill @e[tag=forsaken_lich_soul_well]
kill @e[tag=wave_mob]
kill @e[type=armor_stand,tag=encase_marker]
kill @e[type=area_effect_cloud,tag=lava_geyser]
kill @e[type=bat,tag=cinderstorm_tornado]
kill @e[type=small_fireball,tag=cinderstorm_rain]
kill @e[type=fireball,tag=cinderstorm_meteor]

# Reset world border
worldborder set 59999968

# Reset event counts
scoreboard players set world IntermissionDayCount 1

# Remove dead players tag
tag @a remove limitbreak_dead_player

# Clear all player points in inv
clear @a glowstone_dust
clear @a resin_brick
clear @a sugar

# Set boss wave scoreboards to 0 (reset boss stuff so waves can spawn normally again.)
scoreboard players set world Boss_Death_Check 0
scoreboard players set world Boss_Wave_Check 0
bossbar set boss_health visible false

# Reset bossbars
bossbar set wave_1 visible false
bossbar set wave_2 visible false
bossbar set wave_3 visible false
bossbar set daytime visible true

# Rollback depending on what boss has been defeated (Rollback_Day score is set after a boss is defeated).
execute if score world Rollback_Day matches 0 run time set 1d
execute if score world Rollback_Day matches 10 run time set 11d
execute if score world Rollback_Day matches 20 run time set 21d
execute if score world Rollback_Day matches 30 run time set 31d
execute if score world Rollback_Day matches 40 run time set 41d