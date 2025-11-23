tp @s[tag=!arrow_rain_proc] @n[distance=..4,type=!shulker_bullet,type=!player,type=!#impact_projectiles,type=!item,type=!#boat,type=!item_frame,type=!glow_item_frame,type=!painting,type=!experience_orb,limit=1]
execute at @e[type=minecraft:arrow,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:skill_arrow_rain":1}}}}},tag=!arrow_rain_proc] run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 10 2
title @p[nbt={SelectedItem:{id:"minecraft:bow","components":{"minecraft:enchantments":{levels:{"kiwi:skill_arrow_rain":1}}}}},limit=1] actionbar {"text": "[ARROW RAIN]", "bold": true,"color": "#33aa00"}
scoreboard players set @p[nbt={SelectedItem:{id:"minecraft:bow","components":{"minecraft:enchantments":{levels:{"kiwi:skill_arrow_rain":1}}}}},limit=1] skill_arrow_rain_cooldown 12000
execute as @e[type=minecraft:arrow,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:skill_arrow_rain":1}}}}},tag=!arrow_rain_proc] run particle end_rod ~ ~ ~ 0 20 0 0 100
execute as @e[type=minecraft:arrow,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:skill_arrow_rain":1}}}}},tag=!arrow_rain_proc] run particle flash ~ ~ ~ 1 1 1 0 10
tag @s[tag=!arrow_rain_proc] add arrow_rain_proc
execute as @s[tag=arrow_rain_proc] run schedule function kiwi:enchantment_function/arrow_rain_summon 1t append