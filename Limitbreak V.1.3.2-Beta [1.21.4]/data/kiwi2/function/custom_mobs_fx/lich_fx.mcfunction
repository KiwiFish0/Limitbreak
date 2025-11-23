particle soul_fire_flame ~ ~1.8 ~ 0.15 0.2 0.15 0 2
particle soul ~ ~1 ~0.5 1.5 1 1.5 0.01 1
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1
execute if score @s mob_first_skill_counter matches 50 run tp @s ~ ~ ~ facing entity @p feet
execute if score @s mob_first_skill_counter matches 50 run function kiwi2:custom_mobs_fx/lich_evoker_fang_line
execute if score @s mob_first_skill_counter matches 100 at @r[gamemode=survival] run summon evoker_fangs ~ ~ ~1
execute if score @s mob_first_skill_counter matches 100 at @r[gamemode=survival] run summon evoker_fangs ~1 ~ ~
execute if score @s mob_first_skill_counter matches 100 at @r[gamemode=survival] run summon evoker_fangs ~ ~ ~-1
execute if score @s mob_first_skill_counter matches 100 at @r[gamemode=survival] run summon evoker_fangs ~-1 ~ ~
execute if score @s mob_first_skill_counter matches 100 at @r[gamemode=survival] run summon evoker_fangs ~ ~ ~
execute if score @s mob_first_skill_counter matches 100 as @a[gamemode=survival] at @s run function kiwi2:custom_mobs_fx/lich_evoker_fang_tower
execute if score @s mob_first_skill_counter matches 100 if predicate kiwi2:chance_random_10 as @e[type=skeleton,tag=lich_spawn,limit=15] at @s run function kiwi2:custom_mobs_fx/lich_evoker_fang_tower
execute if score @s mob_first_skill_counter matches 100 at @a run playsound entity.vex.charge master @a ~ ~ ~ 1 0.5
execute if score @s mob_first_skill_counter matches 100 run scoreboard players reset @s mob_first_skill_counter
execute if score @s mob_second_skill_counter matches 100 at @r[gamemode=survival] run summon skeleton ^ ^ ^-2 {Tags:["wave_mob","lich_spawn"],HandItems:[{id:"minecraft:stone_sword",count:1},{}],DeathTime:20s,DeathLootTable:"",attributes:[{id:"attack_damage",base:4}]}
execute if score @s mob_second_skill_counter matches 100 at @r[gamemode=survival] run summon skeleton ^ ^ ^-2 {Tags:["wave_mob","lich_spawn"],HandItems:[{id:"minecraft:bow",count:1},{}],DeathTime:20s,DeathLootTable:"",attributes:[{id:"attack_damage",base:2}]}
execute if score @s mob_second_skill_counter matches 100 at @r[gamemode=survival] run summon skeleton ^ ^ ^-2 {Tags:["wave_mob","lich_spawn"],HandItems:[{},{}],DeathTime:20s,DeathLootTable:"",attributes:[{id:"attack_damage",base:2}]}
execute if score @s mob_second_skill_counter matches 100 at @r[gamemode=survival] run summon skeleton ^ ^ ^-2 {Tags:["wave_mob","lich_spawn"],HandItems:[{id:"minecraft:stone_sword",count:1},{}],DeathTime:20s,DeathLootTable:"",attributes:[{id:"attack_damage",base:4}]}
execute if score @s mob_second_skill_counter matches 100 at @r[gamemode=survival] run summon skeleton ^ ^ ^-2 {Tags:["wave_mob","lich_spawn"],HandItems:[{id:"minecraft:bow",count:1},{}],DeathTime:20s,DeathLootTable:"",attributes:[{id:"attack_damage",base:2}]}
execute if score @s mob_second_skill_counter matches 100 at @r[gamemode=survival] run summon skeleton ^ ^ ^-2 {Tags:["wave_mob","lich_spawn"],HandItems:[{},{}],DeathTime:20s,DeathLootTable:"",attributes:[{id:"attack_damage",base:2}]}
execute if score @s mob_second_skill_counter matches 150 run effect give @r[gamemode=survival] slowness 3 3
execute if score @s mob_second_skill_counter matches 150 run effect give @r[gamemode=survival] poison 3 3
execute if score @s mob_second_skill_counter matches 150 run effect give @r[gamemode=survival] darkness 3 3
execute if score @s mob_second_skill_counter matches 150 run effect give @r[gamemode=survival] wither 3 3
execute if score @s mob_second_skill_counter matches 150 at @a run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.5
execute if score @s mob_second_skill_counter matches 150 run scoreboard players reset @s mob_second_skill_counter
execute if score @s mob_third_skill_counter matches 100 run teleport @r[gamemode=survival] @r[gamemode=survival]
execute if score @s mob_third_skill_counter matches 300 run spreadplayers ~ ~ 1 10 true @a[gamemode=survival]
execute if score @s mob_third_skill_counter matches 300 run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 2
execute if predicate kiwi2:chance_random_10 if entity @s[nbt={HurtTime:1s}] run teleport @s @e[tag=wave_mob,tag=lich_spawn,limit=1,sort=nearest,distance=..10]
execute if entity @s[nbt={HurtTime:1s}] run particle dust{color:[0.098,0.784,0.812],scale:2} ~ ~1 ~ 0.25 1 0.25 0 30
execute if score @s mob_third_skill_counter matches 300 run scoreboard players reset @s mob_third_skill_counter