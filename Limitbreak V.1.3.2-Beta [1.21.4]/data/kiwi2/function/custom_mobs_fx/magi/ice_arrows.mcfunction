kill @e[type=armor_stand,tag=enemy_magus_ice_arrows_marker,limit=1,sort=nearest,distance=..101]

scoreboard objectives add magus_ice_arrows_duration dummy
scoreboard players add @s magus_ice_arrows_duration 300
playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..35] ~ ~ ~ 10000 2
summon armor_stand ^ ^ ^100 {"Marker":1b,"Invisible":1b,Invulnerable:1b,"Tags":["enemy_magus_ice_arrows_marker"]}

execute run function kiwi2:custom_mobs_fx/magi/ice_arrows_summons