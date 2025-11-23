effect give @a[distance=..10] strength 15 1 true
tellraw @a[distance=..10] [{"color":"white","text":"<"},{"color":"green","selector":"@s"},{"color":"white","text":">"},{"bold":true,"color":"gold","text":" Robur!"}]
playsound minecraft:entity.elder_guardian.curse master @a[distance=..10] ~ ~ ~ 0.6 1.2
playsound minecraft:entity.iron_golem.death master @a[distance=..10] ~ ~ ~ 1 2
execute at @a[distance=..10] run particle minecraft:crit ~ ~1 ~ 0.5 0.75 0.5 0.1 30