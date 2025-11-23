attribute @a[tag=knight_ability_used,limit=1] knockback_resistance modifier remove knight_kb_resist_ability
attribute @a[tag=knight_ability_used,limit=1] explosion_knockback_resistance modifier remove knight_explosion_kb_resist_ability
execute at @a[tag=knight_ability_used,limit=1] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0
execute at @a[tag=knight_ability_used,limit=1] run particle smoke ~ ~1 ~ 0.2 0.5 0.2 0.1 100
tag @a[tag=knight_ability_used,limit=1] remove knight_ability_used