execute store result bossbar boss_health value run data get entity @s Health
execute store result score @s weeping_widow_health run data get entity @s Health
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
execute if entity @p[distance=..4.5] run damage @p 8.5 mob_attack by @s
execute if entity @s[tag=weeping_widow_phase_2] run scoreboard players add @s mob_fourth_skill_counter 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.parrot.imitate.spider master @a[distance=..10] ~ ~ ~ 1 2
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.spider.hurt master @a[distance=..10] ~ ~ ~ .5 .3
execute if entity @s[nbt={HurtTime:10s}] run particle minecraft:squid_ink ~ ~1.5 ~ 0.7 0.5 0.7 0.1 25
execute if entity @s[nbt={HurtTime:10s}] if predicate kiwi2:chance_random_10 at @a[sort=nearest,limit=3,distance=..8,gamemode=survival] run setblock ~ ~ ~ cobweb
execute if entity @s[nbt={HurtTime:10s}] if predicate kiwi2:chance_random_5 run summon spider ~ ~1 ~
execute if entity @s[nbt={HurtTime:10s}] if predicate kiwi2:chance_random_5 run summon cave_spider ~ ~1 ~
execute if entity @s[nbt={HurtTime:10s},tag=weeping_widow_phase_2] if predicate kiwi2:chance_random_10 run effect give @e[tag=wave_mob,distance=..12] invisibility 12 1 true

execute if score @s mob_first_skill_counter matches 90 run effect clear @s
execute if score @s mob_first_skill_counter matches 91 run effect give @s regeneration infinite 4 true
execute if score @s mob_first_skill_counter matches 500 run effect give @s slowness 6 255 true
execute if score @s mob_first_skill_counter matches 500 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"item",item:"cobweb"},Radius:1f,RadiusPerTick:0.2f,Duration:90,potion_contents:{potion:"minecraft:awkward",custom_effects:[{id:"minecraft:hunger",amplifier:5,duration:200,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:infested",amplifier:5,duration:100,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:slowness",amplifier:3,duration:120,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:weaving",amplifier:0,duration:1200,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:blindness",amplifier:5,duration:60,show_particles:1b,show_icon:1b,ambient:0b}]}}
execute if score @s mob_first_skill_counter matches 500 run playsound minecraft:entity.phantom.swoop master @a[distance=..50] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 500.. run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 740 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["encase_marker"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-75231133,-1063040616,-1625233082,-1894543835],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI1ODY0MWU3NmRhODI2MjE3MDhhM2Q2YzEwYmI0NTBjMjNkNDc1ZTUyMTAzMTBkMGI4N2U0NjBhNWZjMjM1NCJ9fX0="}]}}}]}
execute if score @s mob_second_skill_counter matches 745 run spreadplayers ~ ~ 8 25 false @e[tag=encase_marker,type=armor_stand]
execute if score @s mob_second_skill_counter matches 750.. run scoreboard players reset @s mob_second_skill_counter

execute unless entity @s[tag=weeping_widow_phase_2] if score @s weeping_widow_health matches ..450 run scoreboard players set @s mob_fourth_skill_counter 700
execute unless entity @s[tag=weeping_widow_phase_2] if score @s weeping_widow_health matches ..450 run tag @s add weeping_widow_phase_2

# Burrow
execute if score @s mob_fourth_skill_counter matches 750 run effect give @s invisibility 2 255 true
execute if score @s mob_fourth_skill_counter matches 750 run effect give @s levitation 3 1 true
execute if score @s mob_fourth_skill_counter matches 750 run playsound minecraft:entity.wither.break_block master @a[distance=..75] ~ ~ ~ 10 .6
execute if score @s mob_fourth_skill_counter matches 750 run particle dust_pillar{block_state:"cobblestone"} ~ ~ ~ 1.5 2 1.5 0.1 400
execute if score @s mob_fourth_skill_counter matches 750 run particle dust_pillar{block_state:"dirt"} ~ ~ ~ 2.5 0.5 2.5 0.1 400
execute if score @s mob_fourth_skill_counter matches 750 run tp @s ~ -65 ~
execute if score @s mob_fourth_skill_counter matches 760..790 if predicate kiwi2:chance_random_50 at @p[gamemode=survival] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 10 .1
# Unburrow
execute if score @s mob_fourth_skill_counter matches 790 run effect clear @s invisibility
execute if score @s mob_fourth_skill_counter matches 790 run tp @s @p[gamemode=survival]
execute if score @s mob_fourth_skill_counter matches 792 run tp @s ~ ~2 ~
execute if score @s mob_fourth_skill_counter matches 795..798 run tp @p[gamemode=survival] ~ ~0.5 ~ facing entity @s
execute if score @s mob_fourth_skill_counter matches 795..798 run tp @s ~ ~ ~ facing entity @p[gamemode=survival]
execute if score @s mob_fourth_skill_counter matches 799 run playsound entity.parrot.imitate.spider master @a[distance=..50] ~ ~ ~ 8 0
execute if score @s mob_fourth_skill_counter matches 799 run playsound entity.phantom.bite master @a[distance=..50] ~ ~ ~ 8 0
execute if score @s mob_fourth_skill_counter matches 799 run playsound entity.fox.screech master @a[distance=..50] ~ ~ ~ 8 0
execute if score @s mob_fourth_skill_counter matches 799 run playsound entity.ravager.attack master @a[distance=..50] ~ ~ ~ 8 0
execute if score @s mob_fourth_skill_counter matches 799 at @p[gamemode=survival] run summon armor_stand ^ ^ ^1 {NoGravity:1b,Silent:1b,DeathTime:20,Invisible:1b,Health:0f,attributes:[{id:"minecraft:max_health",base:0}],active_effects:[{id:"minecraft:wind_charged",amplifier:1,duration:20,show_particles:0b}]}
execute if score @s mob_fourth_skill_counter matches 795..800 run damage @p[gamemode=survival] 16 mob_attack by @s
execute if score @s mob_fourth_skill_counter matches 800 run playsound minecraft:entity.wither.break_block master @a[distance=..75] ~ ~ ~ 10 .6
execute if score @s mob_fourth_skill_counter matches 800 run particle dust_pillar{block_state:"dirt"} ~ ~ ~ 1 2 1 0.1 400
execute if score @s mob_fourth_skill_counter matches 800 run particle dust_pillar{block_state:"cobblestone"} ~ ~ ~ 1 2 1 0.1 400
execute if score @s mob_fourth_skill_counter matches 800.. run scoreboard players reset @s mob_fourth_skill_counter