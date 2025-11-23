# Point Milestones UX
    # Sequence 10 
execute unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:100_points_max_health_upgrade"}]}]}] if score @s Points matches 100.. run tellraw @s {"text": "+1 ✂ Excision Damage (6 Total)", "color": "red"}
execute unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:200_points_max_health_upgrade"}]}]}] if score @s Points matches 200.. run tellraw @s {"text": "+1 ✂ Excision Damage (7 Total)", "color": "red"}
execute unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:325_points_max_health_upgrade"}]}]}] if score @s Points matches 325.. run tellraw @s {"text": "+1 ✂ Excision Damage (8 Total)", "color": "red"}
execute unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:500_points_max_health_upgrade"}]}]}] if score @s Points matches 500.. run tellraw @s {"text": "+1 ✂ Excision Damage (9 Total)", "color": "red"}
execute unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:750_points_max_health_upgrade"}]}]}] if score @s Points matches 750.. run tellraw @s {"text": "+1 ✂ Excision Damage (10 Total)", "color": "red"}
execute unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:1000_points_max_health_upgrade"}]}]}] if score @s Points matches 1000.. run tellraw @s {"text": "+1 ✂ Excision Damage (11 Total)", "color": "red"}

    # Sequence 9
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:1300_points_max_health_upgrade"}]}]}] if score @s Points matches 1300.. run tellraw @s {"text": "+1 ✂ Excision Damage (12 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:1650_points_max_health_upgrade"}]}]}] if score @s Points matches 1650.. run tellraw @s {"text": "+1 ✂ Excision Damage (13 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:2050_points_max_health_upgrade"}]}]}] if score @s Points matches 2050.. run tellraw @s {"text": "+1 ✂ Excision Damage (14 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:2500_points_max_health_upgrade"}]}]}] if score @s Points matches 2500.. run tellraw @s {"text": "+1 ✂ Excision Damage (15 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:3000_points_max_health_upgrade"}]}]}] if score @s Points matches 3000.. run tellraw @s {"text": "+1 ✂ Excision Damage (16 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:3500_points_max_health_upgrade"}]}]}] if score @s Points matches 3500.. run tellraw @s {"text": "+1 ✂ Excision Damage (17 Total)", "color": "red"}

    # Sequence 8
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:4025_points_max_health_upgrade"}]}]}] if score @s Points matches 4025.. run tellraw @s {"text": "+1 ✂ Excision Damage (18 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:4575_points_max_health_upgrade"}]}]}] if score @s Points matches 4575.. run tellraw @s {"text": "+1 ✂ Excision Damage (19 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:5150_points_max_health_upgrade"}]}]}] if score @s Points matches 5150.. run tellraw @s {"text": "+1 ✂ Excision Damage (20 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:5750_points_max_health_upgrade"}]}]}] if score @s Points matches 5750.. run tellraw @s {"text": "+1 ✂ Excision Damage (21 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:6375_points_max_health_upgrade"}]}]}] if score @s Points matches 6375.. run tellraw @s {"text": "+1 ✂ Excision Damage (22 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:7000_points_max_health_upgrade"}]}]}] if score @s Points matches 7000.. run tellraw @s {"text": "+1 ✂ Excision Damage (23 Total)", "color": "red"}

    # Sequence 7
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:7675_points_max_health_upgrade"}]}]}] if score @s Points matches 7675.. run tellraw @s {"text": "+1 ✂ Excision Damage (24 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:8375_points_max_health_upgrade"}]}]}] if score @s Points matches 8375.. run tellraw @s {"text": "+1 ✂ Excision Damage (25 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:9100_points_max_health_upgrade"}]}]}] if score @s Points matches 9100.. run tellraw @s {"text": "+1 ✂ Excision Damage (26 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:9850_points_max_health_upgrade"}]}]}] if score @s Points matches 9850.. run tellraw @s {"text": "+1 ✂ Excision Damage (27 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:10675_points_max_health_upgrade"}]}]}] if score @s Points matches 10675.. run tellraw @s {"text": "+1 ✂ Excision Damage (28 Total)", "color": "red"}
execute as @a unless entity @s[nbt={attributes:[{modifiers:[{id:"minecraft:11500_points_max_health_upgrade"}]}]}] if score @s Points matches 11500.. run tellraw @s {"text": "+2 ✂ Excision Damage (30 Total)", "color": "red"}

# [REAPER] ✂ Excision Damage
    # Phase 1
execute as @a if score @s Points matches 100..199 run scoreboard players set @s reaper_excision_damage 6
execute as @a if score @s Points matches 200..324 run scoreboard players set @s reaper_excision_damage 7
execute as @a if score @s Points matches 325..499 run scoreboard players set @s reaper_excision_damage 8
execute as @a if score @s Points matches 500..749 run scoreboard players set @s reaper_excision_damage 9
execute as @a if score @s Points matches 750..999 run scoreboard players set @s reaper_excision_damage 10
execute as @a if score @s Points matches 1000..1299 run scoreboard players set @s reaper_excision_damage 11
    # Phase 2
execute as @a if score @s Points matches 1300..1649 run scoreboard players set @s reaper_excision_damage 12
execute as @a if score @s Points matches 1650..2049 run scoreboard players set @s reaper_excision_damage 13
execute as @a if score @s Points matches 2050..2499 run scoreboard players set @s reaper_excision_damage 14
execute as @a if score @s Points matches 2500..2999 run scoreboard players set @s reaper_excision_damage 15
execute as @a if score @s Points matches 3000..3499 run scoreboard players set @s reaper_excision_damage 16
execute as @a if score @s Points matches 3500..4024 run scoreboard players set @s reaper_excision_damage 17
    # Phase 3
execute as @a if score @s Points matches 4025..4574 run scoreboard players set @s reaper_excision_damage 18
execute as @a if score @s Points matches 4575..5149 run scoreboard players set @s reaper_excision_damage 19
execute as @a if score @s Points matches 5150..5749 run scoreboard players set @s reaper_excision_damage 20
execute as @a if score @s Points matches 5750..6374 run scoreboard players set @s reaper_excision_damage 21
execute as @a if score @s Points matches 6375..6999 run scoreboard players set @s reaper_excision_damage 22
execute as @a if score @s Points matches 7000..7674 run scoreboard players set @s reaper_excision_damage 23
    # Phase 4
execute as @a if score @s Points matches 7675..8374 run scoreboard players set @s reaper_excision_damage 24
execute as @a if score @s Points matches 8375..9099 run scoreboard players set @s reaper_excision_damage 25
execute as @a if score @s Points matches 9100..9849 run scoreboard players set @s reaper_excision_damage 26
execute as @a if score @s Points matches 9850..10674 run scoreboard players set @s reaper_excision_damage 27
execute as @a if score @s Points matches 10675..11499 run scoreboard players set @s reaper_excision_damage 28
execute as @a if score @s Points matches 11500.. run scoreboard players set @s reaper_excision_damage 30