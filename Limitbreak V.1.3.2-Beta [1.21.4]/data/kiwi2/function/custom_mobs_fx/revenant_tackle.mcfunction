execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s mob_third_skill_counter 1
scoreboard players add @s mob_fourth_skill_counter 1
execute if score @s mob_fourth_skill_counter matches 20 at @p run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 0.25 0.5 0.25 1 25
execute if score @s mob_fourth_skill_counter matches 20 at @p run playsound minecraft:entity.ravager.attack master @a[distance=..5] ~ ~ ~ 1 0.75
execute if score @s mob_fourth_skill_counter matches 20 at @p run playsound minecraft:entity.fox.bite master @a[distance=..5] ~ ~ ~ 1 0.1 1
execute if score @s mob_fourth_skill_counter matches 20.. run scoreboard players reset @s mob_fourth_skill_counter
execute unless score @s mob_third_skill_counter matches 5 run tp @p[gamemode=survival] ^ ^0.2 ^0.75 facing entity @s
execute unless score @s mob_third_skill_counter matches 5 run title @p[gamemode=survival] actionbar {"bold":true,"text": "STRIKE BACK","color":"red"}
execute unless score @s mob_third_skill_counter matches 5 run playsound minecraft:entity.arrow.hit_player master @p[distance=..1.5] ~ ~ ~ 1 1.5
execute if score @s mob_third_skill_counter matches 5 at @p run summon armor_stand ^ ^-0.2 ^0.5 {NoGravity:1b,Silent:1b,DeathTime:20,Invisible:1b,Health:0f,attributes:[{id:"minecraft:max_health",base:0}],active_effects:[{id:"minecraft:wind_charged",amplifier:1,duration:20,show_particles:0b}]}
execute if score @s mob_third_skill_counter matches 5 run function kiwi2:custom_mobs_fx/revenant_tackle_end