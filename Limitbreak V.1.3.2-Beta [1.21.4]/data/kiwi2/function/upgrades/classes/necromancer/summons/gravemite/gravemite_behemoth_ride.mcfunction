ride @s mount @n[type=silverfish,tag=gravemite_behemoth_no_passenger,distance=..3]
tag @n[type=silverfish,tag=gravemite_behemoth_no_passenger,distance=..3] remove gravemite_behemoth_no_passenger
tag @s remove gravemite_behemoth_passenger_candidate
playsound entity.horse.saddle master @a[distance=..24] ~ ~ ~ 1 0
playsound entity.arrow.hit_player master @a[distance=..24] ~ ~ ~ 1 1
playsound entity.strider.death master @a[distance=..24] ~ ~ ~ 1 0
particle end_rod ~ ~1 ~ 0.75 0.8 0.75 0.1 50
particle explosion ~ ~1 ~ 2 0.8 2 0.1 15