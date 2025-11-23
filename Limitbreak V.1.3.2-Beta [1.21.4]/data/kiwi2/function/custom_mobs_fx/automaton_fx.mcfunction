function kiwi2:custom_mobs_fx/break_blocks_light_2x6
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.iron_golem.repair master @a[distance=..20] ~ ~ ~ 1 0.5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:item.shield.break master @a[distance=..20] ~ ~ ~ 1 0.7
execute if score @s mob_first_skill_counter matches 550 run playsound minecraft:block.dispenser.dispense master @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 550 run particle minecraft:large_smoke ~ ~3 ~ 1 1 1 0 20
execute if score @s mob_first_skill_counter matches 560 run playsound minecraft:block.dispenser.dispense master @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 560 run particle minecraft:large_smoke ~ ~3 ~ 1 1 1 0 20
execute if score @s mob_first_skill_counter matches 570 run playsound minecraft:block.dispenser.dispense master @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 570 run particle minecraft:large_smoke ~ ~3 ~ 1 1 1 0 20
execute if score @s mob_first_skill_counter matches 580 run playsound minecraft:block.dispenser.dispense master @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 580 run particle minecraft:large_smoke ~ ~3 ~ 1 1 1 0 20
execute if score @s mob_first_skill_counter matches 590 run playsound minecraft:block.dispenser.dispense master @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 590 run particle minecraft:large_smoke ~ ~3 ~ 1 1 1 0 20
execute if score @s mob_first_skill_counter matches 600 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s mob_first_skill_counter matches 600 run title @a[distance=..20] actionbar {"text": "! DANGER !", "color": "red", "bold": true}
execute if score @s mob_first_skill_counter matches 600 run playsound minecraft:entity.arrow.hit_player master @a[distance=..20] ~ ~ ~ 1 .1
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run particle minecraft:block_marker{block_state:tnt} ~ ~2 ~ 0 0 0 0 1
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run particle minecraft:block_marker{block_state:tnt} ~ ~2 ~ 0 0 0 0 1
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run particle minecraft:block_marker{block_state:tnt} ~ ~2 ~ 0 0 0 0 1
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run particle minecraft:block_marker{block_state:tnt} ~ ~2 ~ 0 0 0 0 1
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run particle minecraft:block_marker{block_state:tnt} ~ ~2 ~ 0 0 0 0 1
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run summon tnt ~ ~15 ~ {fuse:40}
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run summon tnt ~ ~15 ~ {fuse:40}
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run summon tnt ~ ~15 ~ {fuse:40}
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run summon tnt ~ ~15 ~ {fuse:40}
execute if score @s mob_first_skill_counter matches 600 at @r[distance=..20] run summon tnt ~ ~15 ~ {fuse:40}
execute if score @s mob_first_skill_counter matches 600 run scoreboard players reset @s mob_first_skill_counter

execute if score @s mob_second_skill_counter matches 799 run data merge entity @s {Invulnerable:1b}
execute if score @s mob_second_skill_counter matches 800 run summon lightning_bolt ~ ~2 ~
execute if score @s mob_second_skill_counter matches 800 run data merge entity @s {Invulnerable:0b}
execute if score @s mob_second_skill_counter matches 800.. run particle minecraft:electric_spark ~ ~3 ~ 1 1 1 0 1
execute if score @s mob_second_skill_counter matches 800.. run playsound minecraft:block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.1 2
execute if score @s mob_second_skill_counter matches 800.. if entity @a[distance=..3] at @a[distance=..3] run summon lightning_bolt ~ ~ ~
execute if score @s mob_second_skill_counter matches 800.. if entity @a[distance=..3] at @a[distance=..3] run summon lightning_bolt ~ ~ ~
execute if score @s mob_second_skill_counter matches 800.. if entity @a[distance=..3] at @a[distance=..3] run summon lightning_bolt ~ ~ ~
execute if score @s mob_second_skill_counter matches 800.. if entity @a[distance=..3] at @a[distance=..3] run summon lightning_bolt ~ ~ ~
execute if score @s mob_second_skill_counter matches 800.. if entity @a[distance=..3] at @a[distance=..3] run summon tnt ~ ~ ~ {fuse:0,explosion_power:2}
execute if score @s mob_second_skill_counter matches 800.. if entity @a[distance=..3] run scoreboard players set @s mob_second_skill_counter 0