particle item{item:"rotten_flesh"} ~ ~0.5 ~ 1.5 0.4 1.5 0.4 50
particle item{item:"slime_ball"} ~ ~0.5 ~ 1.5 0.4 1.5 0.4 20
particle item{item:"bone"} ~ ~0.5 ~ 1.5 0.4 1.5 0.4 50
particle explosion_emitter ~ ~0.5 ~ 0 0 0 0.4 1
playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 1 2
playsound entity.generic.eat master @a[distance=..20] ~ ~ ~ 1 0

execute as @e[tag=necromancer_summon,distance=..12] at @s run particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 4
effect give @e[tag=necromancer_summon,distance=..12,type=#minecraft:inverted_healing_and_harm] minecraft:instant_damage 1 1
effect give @e[tag=necromancer_summon,distance=..12,type=!#minecraft:inverted_healing_and_harm] minecraft:instant_health 1 1