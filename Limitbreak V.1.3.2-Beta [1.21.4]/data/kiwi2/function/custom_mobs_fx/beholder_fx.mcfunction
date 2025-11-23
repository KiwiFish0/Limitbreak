scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
execute if score @s mob_first_skill_counter matches 120..150 run tp @s ~ ~ ~ facing entity @p[gamemode=survival,distance=..10]
execute if score @s mob_first_skill_counter matches 120 at @p[gamemode=survival,distance=..10] run particle dust{color:[0.706,0.114,0.749],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 50 normal
execute if score @s mob_first_skill_counter matches 135 at @p[gamemode=survival,distance=..10] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["beholder_strike_point"]}
execute if score @s mob_first_skill_counter matches 135 run particle end_rod ~ ~2 ~ 0 0 0 0.1 10
execute if score @s mob_first_skill_counter matches 135 at @e[type=armor_stand,tag=beholder_strike_point,limit=1,sort=nearest] run playsound minecraft:entity.arrow.hit_player master @a[distance=..15] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 135 at @e[type=armor_stand,tag=beholder_strike_point,limit=1,sort=nearest] run particle minecraft:flash ~ ~1 ~ 0 0 0 10 3
execute if score @s mob_first_skill_counter matches 150 at @e[type=armor_stand,tag=beholder_strike_point] run summon tnt ~ ~ ~ {explosion_power:1.75}
execute if score @s mob_first_skill_counter matches 150 run kill @e[type=armor_stand,tag=beholder_strike_point,limit=1,sort=nearest]
execute if score @s mob_first_skill_counter matches 150 store result score @s mob_first_skill_counter run random value 1..5

execute if score @s mob_second_skill_counter matches 200 run playsound minecraft:entity.wind_charge.wind_burst master @a[distance=..15] ~ ~ ~ 1 2
execute if score @s mob_second_skill_counter matches 200 run particle poof ~ ~2 ~ 0 0 0 0.1 20
execute if score @s mob_second_skill_counter matches 200 at @r run spreadplayers ~ ~ 2 10 false @e[type=skeleton,tag=wave_mob,tag=beholder,limit=3,sort=random]
execute if score @s mob_second_skill_counter matches 200 store result score @s mob_second_skill_counter run random value 1..50