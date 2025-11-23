damage @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..2,limit=1] 5 kiwi2:magic_missile_damage by @p[scores={limitbreak_chosen_class=5}]
execute if entity @s[tag=unstable_spell] run spreadplayers ~ ~ 1 5 false @e[type=!#minecraft:items_and_non_mobs,type=!player,distance=..2,limit=1]
execute if entity @s[tag=unstable_spell] run playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 1
execute if entity @s[tag=unstable_spell] run particle dust_color_transition{from_color:[0.8,0.0,0.0],to_color:[1.0,0.0,0.0],scale:1} ~ ~ ~ 0.4 0.7 0.4 1 50
kill @s