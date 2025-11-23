advancement revoke @s only kiwi:gravity_wand
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 50
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gravitron_orb_player"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{levels:{"kiwi:gravitron":3}},"minecraft:profile":{id:[I;1048396531,2059159011,-1939323280,-630683356],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIwMWFlMWE4YTA0ZGY1MjY1NmY1ZTQ4MTNlMWZiY2Y5Nzg3N2RiYmZiYzQyNjhkMDQzMTZkNmY5Zjc1MyJ9fX0="}]}}}]}
execute at @s run tag @e[type=armor_stand,tag=gravitron_orb_player,limit=1,sort=nearest,tag=!gravitron_old] add gravitron_new
execute at @s run scoreboard players add @e[type=armor_stand,tag=gravitron_orb_player,limit=1,sort=nearest,tag=gravitron_new,tag=!gravitron_old] gravitron_lifetime 200
schedule function kiwi:enchantment_function/gravitron_lifetime 1t