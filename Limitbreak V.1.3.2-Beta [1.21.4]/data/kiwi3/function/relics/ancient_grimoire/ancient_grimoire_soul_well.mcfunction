tellraw @a[distance=..35] [{"color":"white","text":"<"},{"color":"green","selector":"@s"},{"color":"white","text":">"},{"bold":true,"color":"#1A5263","text":" Foꙇs Anⱨmarum."}]
summon armor_stand ~ ~ ~ {Glowing:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["player_soul_well"]}
scoreboard players set @e[tag=player_soul_well,limit=1,sort=nearest] ancient_grimoire_soul_well 341
spreadplayers ~ ~ 0 1 false @e[tag=player_soul_well,limit=1,sort=nearest]
execute as @e[tag=player_soul_well] as @s at @s run function kiwi3:relics/ancient_grimoire/ancient_grimoire_soul_well_fx