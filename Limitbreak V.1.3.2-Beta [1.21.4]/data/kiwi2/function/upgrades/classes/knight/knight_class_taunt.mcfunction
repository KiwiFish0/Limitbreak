execute as @e[type=#minecraft:enemy_mobs_only,sort=nearest,distance=..25,tag=!necromancer_summon] at @s run damage @s 0 kiwi2:taunt_damage by @p
execute as @e[type=#minecraft:mobs_with_anger_value,sort=nearest,distance=..25,tag=!necromancer_summon] at @s run damage @s 0 kiwi2:taunt_damage by @p
execute as @e[type=#minecraft:mobs_with_anger_value,sort=nearest,distance=..25,tag=!necromancer_summon] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[type=#minecraft:mobs_with_anger_value,sort=nearest,distance=..25,tag=!necromancer_summon] at @s run data modify entity @s Brain.memories.minecraft:angry_at.value set from entity @p UUID
execute as @e[type=#minecraft:enemy_mobs_only,sort=nearest,distance=..25,limit=30,tag=!necromancer_summon] at @s run particle raid_omen ~ ~1 ~ 0.5 0.5 0.5 0 15
playsound minecraft:entity.wolf.growl master @a[distance=..75] ~ ~ ~ 1 0