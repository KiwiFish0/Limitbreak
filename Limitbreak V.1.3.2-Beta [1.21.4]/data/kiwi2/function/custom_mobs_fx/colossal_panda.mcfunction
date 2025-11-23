function kiwi2:custom_mobs_fx/break_blocks_light_5x5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.panda.aggressive_ambient master @a[distance=..20] ~ ~ ~ 10 0.1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.panda.aggressive_ambient master @a[distance=..20] ~ ~ ~ 10 0.1
execute if entity @s[nbt={HurtTime:10s}] run particle campfire_cosy_smoke ^ ^3 ^0.1 0 0 0 0.1 5
scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1 
execute if score @s mob_first_skill_counter matches 740..750 run particle dust_pillar{block_state:"dirt"} ~ ~3 ~ 3 1 3 1 20
execute if score @s mob_first_skill_counter matches 740..750 run particle dust_pillar{block_state:"stone"} ~ ~3 ~ 3 1 3 1 20
execute if score @s mob_first_skill_counter matches 740..750 run particle dust_pillar{block_state:"coarse_dirt"} ~ ~3 ~ 3 1 3 1 20
execute if score @s mob_first_skill_counter matches 740..750 run tp @s ~ ~ ~ facing entity @p
execute if score @s mob_first_skill_counter matches 740..750 run particle dust{color:[0.769,0.769,0.769],scale:2} ^ ^2 ^6 1 1 1 1 10
execute if score @s mob_first_skill_counter matches 740..750 run playsound minecraft:entity.warden.roar master @a[distance=..50] ~ ~ ~ 10000 .5 1
execute if score @s mob_first_skill_counter matches 740..750 run playsound minecraft:entity.ender_dragon.growl master @a[distance=..50] ~ ~ ~ 10000 .5 1
execute if score @s mob_first_skill_counter matches 740..750 run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 10000 .5 1
execute if score @s mob_first_skill_counter matches 750 run effect give @a[distance=..25] slowness 10 3 true
execute if score @s mob_first_skill_counter matches 750 run effect give @a[distance=..25] weakness 10 2 true
execute if score @s mob_first_skill_counter matches 750 run scoreboard players reset @s mob_first_skill_counter
execute if score @s mob_second_skill_counter matches 1 run data merge entity @s {Invulnerable:0b}
execute if score @s mob_second_skill_counter matches 750 run title @a[distance=..50] actionbar {"text": "Your instincts scream for you to flee.", "color": "red", "bold": true}
execute if score @s mob_second_skill_counter matches 750 run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 .1
execute if score @s mob_second_skill_counter matches 800.. run particle dust{color:[0.749,0.749,0.749],scale:3} ^ ^3 ^0.1 0 0 0 0.1 1
execute if entity @a[distance=..5] if score @s mob_second_skill_counter matches 800.. run function kiwi2:custom_mobs_fx/colossal_panda_second_skill