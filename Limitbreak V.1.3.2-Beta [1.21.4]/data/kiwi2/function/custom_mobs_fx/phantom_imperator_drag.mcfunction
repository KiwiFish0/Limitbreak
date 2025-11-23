scoreboard players add @s mob_third_skill_counter 1
execute if score @s mob_third_skill_counter matches ..159 run tp @p[gamemode=survival] ^ ^ ^ facing entity @s
damage @p[gamemode=survival] 5 mob_attack by @s
effect clear @s invisibility
execute if score @s mob_third_skill_counter matches 1 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 1 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 11 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 11 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 21 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 21 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 31 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 31 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 41 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 41 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 51 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 51 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 61 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 61 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 71 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 71 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 81 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 81 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 91 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 91 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 101 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 101 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 111 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 111 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 121 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 121 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 131 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 131 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 141 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 141 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 151 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 151 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 159 run execute at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 1 1 1 1 25
execute if score @s mob_third_skill_counter matches 159 run playsound minecraft:entity.phantom.bite master @a[distance=..25] ~ ~ ~ 1 0.4
execute if score @s mob_third_skill_counter matches 159 at @p run summon armor_stand ^ ^2 ^ {NoGravity:1b,Silent:1b,DeathTime:20,Invisible:1b,Health:0f,attributes:[{id:"minecraft:max_health",base:0}],active_effects:[{id:"minecraft:wind_charged",amplifier:1,duration:20,show_particles:0b}]}
execute if score @s mob_third_skill_counter matches 160.. run function kiwi2:custom_mobs_fx/phantom_imperator_drag_end