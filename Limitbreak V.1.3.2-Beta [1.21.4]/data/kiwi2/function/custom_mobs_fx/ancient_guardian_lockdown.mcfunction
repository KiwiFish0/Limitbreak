execute if score @s mob_second_skill_counter matches 0 run tag @r[limit=1,sort=random,gamemode=survival] add ancient_guardian_lockdown
execute if score @s mob_second_skill_counter matches 0 at @a[tag=ancient_guardian_lockdown,limit=1] run playsound minecraft:block.chain.place master @a[distance=..50] ~ ~ ~ 100 0.1 1
execute if score @s mob_second_skill_counter matches 0 at @a[tag=ancient_guardian_lockdown,limit=1] run playsound minecraft:entity.iron_golem.death master @a[distance=..50] ~ ~ ~ 100 2 1
execute if score @s mob_second_skill_counter matches 0 at @a[tag=ancient_guardian_lockdown,limit=1] run particle elder_guardian ~ ~ ~ ~ ~ ~ 1 1 force
execute if score @s mob_second_skill_counter matches 0 at @a[tag=ancient_guardian_lockdown,limit=1] run particle elder_guardian ~ ~ ~ ~ ~ ~ 1 1 force
execute if score @s mob_second_skill_counter matches 0 run tellraw @a ["An ",{"bold":true,"color":"#ADADAD","italic":false,"text":"Ancient Guardian "},"has restrained ",{"selector":"@a[tag=ancient_guardian_lockdown]"}]
execute if score @s mob_second_skill_counter matches 0 run playsound minecraft:entity.arrow.hit_player master @a[distance=..50] ~ ~ ~ 1 2 1
execute if score @s mob_second_skill_counter matches 0 run scoreboard players add @s mob_second_skill_counter 1
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s mob_second_skill_counter 1
title @a[tag=ancient_guardian_lockdown,limit=1] actionbar {"text": "<<< YOU ARE BEING RESTRAINED >>>","color": "red","bold": true}
effect give @a[tag=ancient_guardian_lockdown,limit=1] slowness 1 255 true
damage @a[tag=ancient_guardian_lockdown,limit=1] 3 mob_attack by @s
attribute @a[tag=ancient_guardian_lockdown,limit=1] minecraft:jump_strength base set 0
execute at @a[tag=ancient_guardian_lockdown,limit=1] run particle dust{color:[0.008,0.765,0.878],scale:1} ~ ~1.7 ~ 0.2 0.2 0.2 0 5 normal
execute at @a[tag=ancient_guardian_lockdown,limit=1] run particle minecraft:bubble_pop ~ ~1 ~ 0.25 0.5 0.25 0 5
execute if score @s mob_second_skill_counter matches 11 at @a[tag=ancient_guardian_lockdown,limit=1] run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..50] ~ ~ ~ 1 0.1
execute if score @s mob_second_skill_counter matches 11 at @a[tag=ancient_guardian_lockdown,limit=1] run playsound minecraft:entity.iron_golem.damage master @a[distance=..50] ~ ~ ~ 1 0.1 1
execute if score @s mob_second_skill_counter matches 11 at @a[tag=ancient_guardian_lockdown,limit=1] run playsound minecraft:block.trial_spawner.ominous_activate master @a[distance=..50] ~ ~ ~ 100 2 1
execute if score @s mob_second_skill_counter matches 11 run tellraw @a ["The restraint on ",{"selector":"@a[tag=ancient_guardian_lockdown,limit=1]"}, " has been broken!"]
execute if score @s mob_second_skill_counter matches 11 run attribute @a[tag=ancient_guardian_lockdown,limit=1] minecraft:jump_strength base reset
execute if score @s mob_second_skill_counter matches 11 run tag @a[tag=ancient_guardian_lockdown,limit=1,sort=nearest] remove ancient_guardian_lockdown
execute if score @s mob_second_skill_counter matches 11 store result score @s mob_first_skill_counter run random value 1..100
execute if score @s mob_second_skill_counter matches 11 run scoreboard players set @s mob_second_skill_counter 0