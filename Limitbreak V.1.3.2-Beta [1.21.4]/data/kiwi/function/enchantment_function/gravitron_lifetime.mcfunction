execute if score @s gravitron_lifetime matches 1..200 run scoreboard players remove @s gravitron_lifetime 1
execute if entity @s[tag=gravitron_new] run tag @s remove gravitron_new
execute unless entity @s[tag=gravitron_old] run tag @s add gravitron_old
execute if score @s gravitron_lifetime matches 0 run particle flash ~ ~2 ~ 0 0 0 1 10
execute if score @s gravitron_lifetime matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gravitron_death"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1048396531,2059159011,-1939323280,-630683356],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIwMWFlMWE4YTA0ZGY1MjY1NmY1ZTQ4MTNlMWZiY2Y5Nzg3N2RiYmZiYzQyNjhkMDQzMTZkNmY5Zjc1MyJ9fX0="}]}}}]}
execute if score @s gravitron_lifetime matches 0 run schedule function kiwi:enchantment_function/gravitron_explode 10t
execute as @s at @s if score @s gravitron_lifetime matches 0 run stopsound @a[distance=..30] * block.respawn_anchor.ambient
execute if score @s gravitron_lifetime matches 25 run playsound minecraft:entity.warden.sonic_charge master @a[distance=..30] ~ ~ ~ 10 0.1
execute if score @s gravitron_lifetime matches 15 run playsound minecraft:entity.warden.sonic_charge master @a[distance=..30] ~ ~ ~ 10 1
execute if score @s gravitron_lifetime matches 5 run playsound minecraft:entity.warden.sonic_charge master @a[distance=..30] ~ ~ ~ 10 2
execute if score @s gravitron_lifetime matches 0 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..30] ~ ~ ~ 10 0.1
execute if score @s gravitron_lifetime matches 0 run kill @s
execute if score @s gravitron_lifetime matches 10..200 run particle portal ~ ~1.7 ~ 0 0 0 1 5