effect give @a[distance=..10] absorption 30 4 true
tellraw @a[distance=..10] [{"color":"white","text":"<"},{"color":"green","selector":"@s"},{"color":"white","text":">"},{"bold":true,"color":"gray","text":" Praesidium!"}]
playsound minecraft:entity.elder_guardian.curse master @a[distance=..10] ~ ~ ~ 0.6 1.2
playsound minecraft:item.totem.use master @a[distance=..10] ~ ~ ~ 0.3 2
execute at @a[distance=..10] run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.75 0.5 0.1 50