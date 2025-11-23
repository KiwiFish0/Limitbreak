tag @s add summon_despawn
scoreboard players remove @a[tag=necromancer_despawn,limit=1] necromancer_summon_count 1
scoreboard players remove @a[tag=necromancer_despawn_2,limit=1] necromancer_summon_count 2
scoreboard players remove @a[tag=necromancer_despawn_3,limit=1] necromancer_summon_count 3
function kiwi2:upgrades/classes/necromancer/summons/all_summons/despawn_give_bone_density
execute if entity @s[type=creeper,tag=volatile_creeper] run data merge entity @s {Fuse:0}
execute if entity @s[type=silverfish,tag=gravemite_gnawer] run function kiwi2:upgrades/classes/necromancer/summons/gravemite/gravemite_gnawer_death
particle large_smoke ~ ~1 ~ 0.3 0.8 0.3 0 30
summon evoker_fangs ~ ~ ~
kill @n[type=slime,tag=necromancer_summon_check,sort=nearest,predicate=!kiwi2:no_riding,limit=1]
kill @s[tag=!volatile_creeper]
tp @s[tag=!volatile_creeper] ~ ~-385 ~