playsound minecraft:block.respawn_anchor.charge master @a[distance=..40] ~ ~ ~ 1 2
execute at @r run tp @e[type=minecraft:bat,tag=vehicle_mob,nbt={Passengers:[{id:"minecraft:elder_guardian"}]},limit=1] ~ ~16 ~
particle end_rod ~ ~ ~ 2 2 2 0.2 100