damage @p[distance=..10,limit=1] 5 mob_attack by @s
execute at @p[distance=..10] run particle minecraft:bubble_pop ~ ~1 ~ 0.25 0.5 0.25 0 5
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1
execute if score @s mob_first_skill_counter matches 920 run playsound minecraft:entity.elder_guardian.ambient master @a[distance=..50] ~ ~ ~ 1 2 1
execute if score @s mob_first_skill_counter matches 920 run tellraw @a [{"obfuscated":true,"text":"die"},{"bold":true,"color":"red","italic":false,"obfuscated":false,"text":" אנגלית או ספרדית "},{"obfuscated":true,"text":"die"}]
execute if score @s mob_first_skill_counter matches 960 run particle enchant ~ ~3 ~ 2 1 2 1 300
execute if score @s mob_first_skill_counter matches 960 run playsound minecraft:block.portal.trigger master @a[distance=..50] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 999 run scoreboard players set @s mob_second_skill_counter 0
execute if score @s mob_first_skill_counter matches 999 run particle minecraft:end_rod ~ ~3 ~ 2 2 2 0.3 100
execute if score @s mob_first_skill_counter matches 1000.. run function kiwi2:custom_mobs_fx/ancient_guardian_lockdown

execute if score @s mob_third_skill_counter matches 1050 run playsound minecraft:entity.elder_guardian.ambient master @a[distance=..50] ~ ~ ~ 1 2 1
execute if score @s mob_third_skill_counter matches 1050 run tellraw @a [{"obfuscated":true,"text":"die"},{"bold":true,"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"","color":"yellow"}]},"italic":false,"obfuscated":false,"text":" הרעם הוא הקול שלי, האש היא הרצון שלי. "},{"obfuscated":true,"text":"die"}]
execute if score @s mob_third_skill_counter matches 1070 at @a run playsound minecraft:entity.elder_guardian.curse master @a[distance=..100] ~ ~ ~ 100 2 1
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1070 run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ancient_guardian_lightning_pos"]}
execute if score @s mob_third_skill_counter matches 1075 run spreadplayers ~ ~ 1 10 false @e[type=armor_stand,tag=ancient_guardian_lightning_pos]
execute if score @s mob_third_skill_counter matches 1075..1110 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run particle end_rod ~ ~5 ~ 0 2 0 0 5
execute if score @s mob_third_skill_counter matches 1100 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run particle flash ~ ~ ~ 0 0 0 0 5
execute if score @s mob_third_skill_counter matches 1110 run data merge entity @s {Invulnerable:1b}
execute if score @s mob_third_skill_counter matches 1110 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run summon lightning_bolt ~ ~ ~
execute if score @s mob_third_skill_counter matches 1110 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_third_skill_counter matches 1110 at @a run playsound minecraft:entity.elder_guardian.curse master @a[distance=..100] ~ ~ ~ 100 2 1
execute if score @s mob_third_skill_counter matches 1115 run spreadplayers ~ ~ 3 20 false @e[type=armor_stand,tag=ancient_guardian_lightning_pos]
execute if score @s mob_third_skill_counter matches 1115..1150 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run particle end_rod ~ ~5 ~ 0 10 0 0 5
execute if score @s mob_third_skill_counter matches 1140 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run particle flash ~ ~ ~ 0 0 0 0 5
execute if score @s mob_third_skill_counter matches 1150 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run summon lightning_bolt ~ ~ ~
execute if score @s mob_third_skill_counter matches 1150 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_third_skill_counter matches 1150 at @a run playsound minecraft:entity.elder_guardian.curse master @a[distance=..100] ~ ~ ~ 100 2 1
execute if score @s mob_third_skill_counter matches 1155 run spreadplayers ~ ~ 5 30 false @e[type=armor_stand,tag=ancient_guardian_lightning_pos]
execute if score @s mob_third_skill_counter matches 1155..1190 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run particle end_rod ~ ~5 ~ 0 10 0 0 5
execute if score @s mob_third_skill_counter matches 1180 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run particle flash ~ ~ ~ 0 0 0 0 5
execute if score @s mob_third_skill_counter matches 1190 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run summon lightning_bolt ~ ~ ~
execute if score @s mob_third_skill_counter matches 1190 at @e[type=armor_stand,tag=ancient_guardian_lightning_pos] run summon tnt ~ ~ ~ {explosion_power:4}
execute if score @s mob_third_skill_counter matches 1195 run kill @e[type=armor_stand,tag=ancient_guardian_lightning_pos]
execute if score @s mob_third_skill_counter matches 1195 run data merge entity @s {Invulnerable:0b}
execute if score @s mob_third_skill_counter matches 1200 store result score @s mob_third_skill_counter run random value 1..500

# Teleport near a random player
# execute if score @s mob_third_skill_counter matches 1000 if predicate kiwi2:chance_random_50 at @r run spreadplayers ~ ~ 0 20 false @e[type=minecraft:bat,tag=vehicle_mob,nbt={Passengers:[{id:"minecraft:elder_guardian"}]},limit=1]
execute if score @s mob_third_skill_counter matches 100 if predicate kiwi2:chance_random_50 run function kiwi2:custom_mobs_fx/ancient_guardian_teleport