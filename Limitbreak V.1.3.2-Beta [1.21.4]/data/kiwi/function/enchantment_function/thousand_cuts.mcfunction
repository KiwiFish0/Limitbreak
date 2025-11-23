execute if score @s skill_thousand_cuts_cooldown matches 0 run tag @a remove thousand_cuts_intitator
execute if score @s skill_thousand_cuts_cooldown matches 0 run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add thousand_cuts_target
execute if score @s skill_thousand_cuts_cooldown matches 0 run tag @s add thousand_cuts_intitator
execute if score @s skill_thousand_cuts_cooldown matches 0 run scoreboard players set @e[nbt={HurtTime:10s},limit=1,sort=nearest] skill_thousand_cuts 60
execute if score @s skill_thousand_cuts_cooldown matches 0 run title @s actionbar {"text": "[THOUSAND CUTS]", "color": "#f3be00","bold": true}
execute if score @s skill_thousand_cuts_cooldown matches 0 run function kiwi:enchantment_function/skill_activate_sound
execute if score @s skill_thousand_cuts_cooldown matches 0 run scoreboard players set @p[tag=thousand_cuts_intitator,limit=1,sort=nearest] skill_thousand_cuts_cooldown 2400