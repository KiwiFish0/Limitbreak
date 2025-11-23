execute if entity @e[type=stray,tag=enemy_magus,scores={magus_ice_arrows_duration=1..}] run schedule function kiwi2:custom_mobs_fx/magi/ice_arrows_summons 1t
execute as @e[type=stray,tag=enemy_magus,scores={magus_ice_arrows_duration=1..}] at @s run function kiwi2:custom_mobs_fx/magi/ice_arrows_summon_chances
playsound entity.breeze.shoot master @a[distance=..25] ~ ~ ~ 1 2
execute as @e[type=stray,tag=enemy_magus,scores={magus_ice_arrows_duration=1..}] at @s run tp @e[type=armor_stand,tag=enemy_magus_ice_arrows_marker,limit=1,sort=nearest] ^ ^ ^100
execute as @e[type=stray,tag=enemy_magus,scores={magus_ice_arrows_duration=1..}] at @s run scoreboard players remove @s magus_ice_arrows_duration 1
execute as @e[type=stray,tag=enemy_magus,scores={magus_ice_arrows_duration=0}] at @s run kill @e[type=armor_stand,tag=enemy_magus_ice_arrows_marker,limit=1,sort=nearest,distance=..101]
execute as @e[type=stray,tag=enemy_magus,scores={magus_ice_arrows_duration=0}] at @s run kill @e[type=block_display,tag=enemy_magus_ice_arrow,limit=10,sort=nearest,distance=..20]