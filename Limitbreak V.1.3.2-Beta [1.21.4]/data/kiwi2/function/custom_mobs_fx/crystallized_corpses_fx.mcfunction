execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.iron_golem.hurt master @a[distance=..10] ~ ~ ~ 0.5 1.5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.amethyst_block.resonate master @a[distance=..10] ~ ~ ~ 1 1.5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.amethyst_block.chime master @a[distance=..10] ~ ~ ~ 1 1.5
execute if entity @s[nbt={HurtTime:10s}] run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0 10
execute if entity @s[nbt={HurtTime:10s}] run particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0.2 5
scoreboard players add @s mob_first_skill_counter 1
kill @e[type=item,nbt={Item:{id:"minecraft:amethyst_cluster"}},distance=..20]
kill @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}},distance=..20]
execute if score @s mob_first_skill_counter matches 200 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:amethyst_cluster"},Time:1}
execute if score @s mob_first_skill_counter matches 300 run setblock ~ ~-1 ~ amethyst_block
execute if score @s mob_first_skill_counter matches 600 at @r run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:amethyst_block"},Time:1}
execute if score @s mob_first_skill_counter matches 600 run scoreboard players reset @s mob_first_skill_counter