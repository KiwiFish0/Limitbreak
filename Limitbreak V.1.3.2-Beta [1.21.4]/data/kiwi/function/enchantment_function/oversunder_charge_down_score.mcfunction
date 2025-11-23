execute if score @s skill_oversunder matches 1..100 run scoreboard players remove @s skill_oversunder 1
execute if score @s skill_oversunder matches 0 if entity @s[tag=oversunder_user] run title @s actionbar {"text": "[OVERSUNDER DISCHARGED]","color": "dark_red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 10 run title @s actionbar {"text": "[|.........]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 20 run title @s actionbar {"text": "[||........]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 30 run title @s actionbar {"text": "[|||.......]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 40 run title @s actionbar {"text": "[||||......]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 50 run title @s actionbar {"text": "[|||||.....]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 60 run title @s actionbar {"text": "[||||||....]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 70 run title @s actionbar {"text": "[|||||||...]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 80 run title @s actionbar {"text": "[||||||||..]","color": "red","bold": true}
execute if score @s skill_oversunder_cooldown matches 0 if score @s skill_oversunder matches 90 run title @s actionbar {"text": "[|||||||||.]","color": "red","bold": true}
execute if score @s skill_oversunder matches 0 if entity @s[tag=oversunder_user] run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.1
execute if score @s skill_oversunder matches 0 if entity @s[tag=oversunder_user] run tag @s remove oversunder_user