scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_fourth_skill_counter 1
scoreboard players add @s mob_fifth_skill_counter 1
execute if entity @s[nbt={HurtTime:10s}] run effect clear @s invisibility
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.phantom.hurt master @a[distance=..50] ~ ~ ~ 100 0.3 1
execute if entity @s[nbt={HurtTime:10s}] if predicate kiwi2:chance_random_10 run playsound minecraft:entity.phantom.death master @a[distance=..50] ~ ~ ~ 100 0.3 1
execute if entity @s[nbt={HurtTime:1s}] run effect give @s invisibility infinite 255 true
execute if score @s mob_first_skill_counter matches 800 run particle campfire_signal_smoke ~ ~ ~ 3 2 3 1 300
execute if score @s mob_first_skill_counter matches 800 run playsound entity.ender_dragon.flap master @a[distance=..50] ~ ~ ~ 1 0.5 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.bat.takeoff master @a[distance=..50] ~ ~ ~ 1 0.1 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.fox.screech master @a[distance=..50] ~ ~ ~ 100 0.1 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.fox.screech master @a[distance=..50] ~ ~ ~ 100 0.1 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.fox.screech master @a[distance=..50] ~ ~ ~ 100 0.1 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.warden.roar master @a[distance=..50] ~ ~ ~ 0.4 0.1 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.warden.roar master @a[distance=..50] ~ ~ ~ 0.4 0.1 1
execute if score @s mob_first_skill_counter matches 800 run playsound entity.ender_dragon.growl master @a[distance=..50] ~ ~ ~ 100 0.3 1
execute if score @s mob_first_skill_counter matches 800 run effect give @a[distance=..50,gamemode=survival] blindness 3 3 true
execute if score @s mob_first_skill_counter matches 800 run effect give @a[distance=..50,gamemode=survival] nausea 10 3 true
execute if score @s mob_first_skill_counter matches 800 run effect give @a[distance=..50,gamemode=survival] darkness 5 3 true
execute if score @s mob_first_skill_counter matches 800 run summon phantom ~ ~ ~
execute if score @s mob_first_skill_counter matches 800 run summon phantom ~ ~ ~
execute if score @s mob_first_skill_counter matches 800 run summon phantom ~ ~ ~
execute if score @s mob_first_skill_counter matches 800 run summon phantom ~ ~ ~
execute if score @s mob_first_skill_counter matches 800 run summon phantom ~ ~ ~
execute if score @s mob_first_skill_counter matches 800 run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 1200.. if entity @p[distance=..5] run function kiwi2:custom_mobs_fx/phantom_imperator_drag

execute if score @s mob_fourth_skill_counter matches 1780 at @a run particle minecraft:end_rod ~ ~5 ~ 0 5 0 0 100
execute if score @s mob_fourth_skill_counter matches 1780 at @a run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 100 2 1
execute if score @s mob_fourth_skill_counter matches 1780 at @a run particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 1 5
execute if score @s mob_fourth_skill_counter matches 1800 at @a run particle minecraft:end_rod ~ ~ ~ 0.25 0.5 0.25 .5 50
execute if score @s mob_fourth_skill_counter matches 1800 at @a run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 100 2 1
execute if score @s mob_fourth_skill_counter matches 1800 run effect give @a[distance=..50] levitation 12 3 true
execute if score @s mob_fourth_skill_counter matches 1800..2000 run damage @r[distance=..50] 1.5 magic by @s
execute if score @s mob_fourth_skill_counter matches 2000 store result score @s mob_fourth_skill_counter run random value 1..500

execute if score @s mob_fifth_skill_counter matches 955 run data merge entity @s {Invulnerable:1b}
execute if score @s mob_fifth_skill_counter matches 960..969 run summon lightning_bolt ~ ~ ~
execute if score @s mob_fifth_skill_counter matches 970 run data merge entity @s {Invulnerable:0b}
execute if score @s mob_fifth_skill_counter matches 970 at @a run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 100 2 1
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 970 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["phantom_imperator_lightning_pos"]}
execute if score @s mob_fifth_skill_counter matches 971 run spreadplayers ~ ~ 5 30 false @e[type=armor_stand,tag=phantom_imperator_lightning_pos]
execute if score @s mob_fifth_skill_counter matches 972 at @e[type=armor_stand,tag=phantom_imperator_lightning_pos] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1
execute if score @s mob_fifth_skill_counter matches 1000 at @e[type=armor_stand,tag=phantom_imperator_lightning_pos] run summon lightning_bolt ~ ~ ~
execute if score @s mob_fifth_skill_counter matches 1000 at @e[type=armor_stand,tag=phantom_imperator_lightning_pos] run summon tnt ~ ~ ~ {explosion_power:5}
execute if score @s mob_fifth_skill_counter matches 1001 run kill @e[type=armor_stand,tag=phantom_imperator_lightning_pos]
execute if score @s mob_fifth_skill_counter matches 1001 store result score @s mob_fifth_skill_counter run random value 40..500