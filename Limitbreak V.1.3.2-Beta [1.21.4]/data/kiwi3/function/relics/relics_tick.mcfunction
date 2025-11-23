# Perpetual Scheduling
schedule function kiwi3:relics/relics_tick 20t replace

# Pulse Stone
execute at @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{pulse_stone:1b}}}]}] run function kiwi3:relics/pulse_stone/pulse_stone_fx

# Herb of Narcissus
execute as @a[nbt={Inventory:[{id:"minecraft:cornflower",components:{"minecraft:custom_data":{herb_of_narcissus:1b}}}]}] at @s if entity @e[type=#enemy_mobs_only,distance=..3] as @e[type=#enemy_mobs_only,distance=..3,limit=2] at @s run function kiwi3:relics/herb_of_narcissus/herb_of_narcissus_fx

# Aglaophotis
execute at @a[nbt={Inventory:[{id:"minecraft:peony",components:{"minecraft:custom_data":{aglaophotis:1b}}}]}] run function kiwi3:relics/aglaophotis/aglaophotis_fx

# Oni Horn
execute as @a[nbt={Inventory:[{id:"minecraft:end_rod",Slot:103b,components:{"minecraft:custom_data":{oni_horn:1b}}}]},tag=!relic_fx] run function kiwi3:relics/oni_horn/oni_horn_fx

# Eye of Night
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:103b,components:{"minecraft:custom_data":{eye_of_night:1b}}}]}] run function kiwi3:relics/eye_of_night/eye_of_night_fx

# Ambrosia
execute if entity @a[nbt={Inventory:[{id:"minecraft:honeycomb",components:{"minecraft:custom_data":{ambrosia:1b}}}]}] run function kiwi3:relics/ambrosia/ambrosia_fx

# Cinderstorm Rod
execute as @a[nbt={Inventory:[{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{cinderstorm_rod:1b}}}]}] at @s if entity @e[type=!#items_and_non_mobs,distance=..3] as @e[type=!#items_and_non_mobs,distance=..3,limit=2] at @s run function kiwi3:relics/cinderstorm_rod/cinderstorm_rod_fx

# Pulse Crystal
execute at @a[nbt={Inventory:[{id:"minecraft:amethyst_cluster",components:{"minecraft:custom_data":{pulse_crystal:1b}}}]}] run function kiwi3:relics/pulse_crystal/pulse_crystal_fx

# Seed of Life
execute if entity @a[nbt={Inventory:[{id:"minecraft:turtle_scute",components:{"minecraft:custom_data":{seed_of_life:1b}}}]}] as @a[nbt={Inventory:[{id:"minecraft:turtle_scute",components:{"minecraft:custom_data":{seed_of_life:1b}}}]}] at @s run function kiwi3:relics/seed_of_life/seed_of_life_fx

# Blossoming Millenia Sapling
execute if entity @a[nbt={Inventory:[{id:"minecraft:cherry_sapling",components:{"minecraft:custom_data":{blossoming_millennia_sapling:1b}}}]}] as @a[nbt={Inventory:[{id:"minecraft:cherry_sapling",components:{"minecraft:custom_data":{blossoming_millennia_sapling:1b}}}]}] at @s if score @s blossoming_millennia_sapling matches 1.. run function kiwi3:relics/blossoming_millennia_sapling/blossoming_millennia_sapling_fx

# Withered Millennia Sapling
execute if entity @a[nbt={Inventory:[{id:"minecraft:pale_oak_sapling",components:{"minecraft:custom_data":{withered_millennia_sapling:1b}}}]}] as @a[nbt={Inventory:[{id:"minecraft:pale_oak_sapling",components:{"minecraft:custom_data":{withered_millennia_sapling:1b}}}]}] at @s if score @s blossoming_millennia_sapling matches 1.. run function kiwi3:relics/withered_millennia_sapling/withered_millennia_sapling_fx

# Absorption Crystal
execute if entity @e[type=armor_stand,tag=absorption_crystal] as @e[type=armor_stand,tag=absorption_crystal] at @s run function kiwi3:relics/absorption_crystal/absorption_crystal_fx

# Wither Crystal
execute if entity @e[type=armor_stand,tag=wither_crystal] as @e[type=armor_stand,tag=wither_crystal] at @s run function kiwi3:relics/wither_crystal/wither_crystal_fx

# Slowness Crystal
execute if entity @e[type=armor_stand,tag=slowness_crystal] as @e[type=armor_stand,tag=slowness_crystal] at @s run function kiwi3:relics/slowness_crystal/slowness_crystal_fx

# Relics effects reapply timer
scoreboard players add world relics_timer 1
execute if score world relics_timer matches 60 run tag @a remove relic_fx
execute if score world relics_timer matches 60.. run scoreboard players reset world relics_timer