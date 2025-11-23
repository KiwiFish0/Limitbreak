execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run enchant @s kiwi:hunters_precision
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run enchant @s kiwi:hunters_precision
scoreboard players add @s[tag=hunter_has_shot_power_shot] power_shot_arrow_age 1
execute if score @s power_shot_arrow_age matches ..15 run function kiwi2:upgrades/classes/hunter/sonic_boom_rings/reload_fx
execute if score @s power_shot_arrow_age matches 15.. run function kiwi2:upgrades/classes/hunter/sonic_boom_rings/reload_sound

execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}},crit:0b,inGround:0b}] run function kiwi2:upgrades/classes/hunter/hunter_power_shot_fail
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}},tag=!sonic_boom_done] run function kiwi2:upgrades/classes/hunter/sonic_boom_rings/ring_1
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 1 force
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air if predicate kiwi2:chance_random_20 run particle flash ~ ~ ~ 0.1 0.1 0.1 0.2 1 force
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s run scoreboard players add @s power_shot_arrow_age 1
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run data merge entity @s {NoGravity:1b}
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s unless block ~ ~ ~ #air run data merge entity @s {NoGravity:0b}
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run playsound minecraft:item.trident.riptide_3 player @a[distance=..24] ~ ~ ~ 0.2 2
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run playsound minecraft:entity.goat.ram_impact player @a[distance=..24] ~ ~ ~ 1 2
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run playsound minecraft:entity.breeze.charge player @a[distance=..24] ~ ~ ~ 1 2
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if block ~ ~ ~ #air run playsound minecraft:entity.warden.attack_impact player @a[distance=..24] ~ ~ ~ 1 2
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s if score @s power_shot_arrow_age matches 400 run kill @s
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}},inGround:1b}] at @s run playsound entity.arrow.hit player @a[distance=..48] ~ ~ ~ 2 0.7
execute as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}},inGround:1b}] at @s run kill @s
