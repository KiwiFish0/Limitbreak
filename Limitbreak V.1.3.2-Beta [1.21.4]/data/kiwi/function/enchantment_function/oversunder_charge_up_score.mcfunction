execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches ..99 run scoreboard players add @s skill_oversunder 1
execute if score @s skill_oversunder_cooldown matches 0 run particle block_crumble{block_state:"redstone_block"} ~ ~1 ~ 0.6 0.8 0.6 1 5
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 10 run title @s actionbar {"text": "[|.........]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 20 run title @s actionbar {"text": "[||........]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 30 run title @s actionbar {"text": "[|||.......]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 40 run title @s actionbar {"text": "[||||......]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 50 run title @s actionbar {"text": "[|||||.....]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 60 run title @s actionbar {"text": "[||||||....]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 70 run title @s actionbar {"text": "[|||||||...]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 80 run title @s actionbar {"text": "[||||||||..]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 90 run title @s actionbar {"text": "[|||||||||.]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 100 run title @s actionbar {"text": "[OVERSUNDER CHARGED]","color": "green","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 20 if entity @s[tag=!oversunder_user] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.1
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 100 if entity @s[tag=!oversunder_user] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.1
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 95 if entity @s[tag=!oversunder_user] at @s run playsound minecraft:entity.warden.sonic_charge master @s ~ ~ ~ 1 2
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 100 if entity @s[tag=!oversunder_user] run tag @s add oversunder_user