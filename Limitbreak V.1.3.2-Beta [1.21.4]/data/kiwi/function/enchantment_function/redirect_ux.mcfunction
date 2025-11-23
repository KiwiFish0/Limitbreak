particle ominous_spawning ~ ~1 ~ 0 0 0 1 2
effect give @s slowness 1 255 true
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:explosion_knockback_resistance base set 1
execute as @a if score @s skill_redirect matches 100 run title @s actionbar {"text": "[REDIRECT]", "color": "#2197b1","bold": true}
execute as @a if score @s skill_redirect matches 100 run function kiwi:enchantment_function/skill_activate_sound
execute as @a if score @s skill_redirect matches 1.. run scoreboard players remove @s skill_redirect 1
execute if score @s skill_redirect matches 0 run function kiwi:enchantment_function/redirect_fx
execute if score @s skill_redirect matches 0 run attribute @s jump_strength base reset
execute if score @s skill_redirect matches 0 run attribute @s explosion_knockback_resistance base reset