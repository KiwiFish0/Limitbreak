execute if entity @e[type=armor_stand,tag=reaper_excision_marker,scores={reaper_excision_timer=1..}] run schedule function kiwi2:upgrades/classes/reaper/excision_spin 1t
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=20}] at @s run scoreboard players set @s reaper_excision_rotation -18
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^1 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^2 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^3 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^4 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^5 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^6 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:sweep_attack ^-2 ^1 ^7 0 0 0 1 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run tp @e[type=item_display,tag=reaper_excision_marker_display,limit=1,sort=nearest] @s
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s as @e[type=item_display,tag=reaper_excision_marker_display,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^1 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^2 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^3 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^4 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^5 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^6 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0.2 5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..24] ~ ~ ~ 1 1.5
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s reaper_excision_rotation
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s run scoreboard players remove @s reaper_excision_rotation 18
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s run scoreboard players remove @s reaper_excision_timer 1
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s positioned ^ ^ ^ as @e[type=!player,type=!#items_and_non_mobs,distance=..1.5] at @s run function kiwi2:upgrades/classes/reaper/excision_damage with storage kiwi:excision_damage pos
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s positioned ^ ^ ^2 as @e[type=!player,type=!#items_and_non_mobs,distance=..1.5] at @s run function kiwi2:upgrades/classes/reaper/excision_damage with storage kiwi:excision_damage pos
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s positioned ^ ^ ^4 as @e[type=!player,type=!#items_and_non_mobs,distance=..1.5] at @s run function kiwi2:upgrades/classes/reaper/excision_damage with storage kiwi:excision_damage pos
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=1..}] at @s positioned ^ ^ ^6 as @e[type=!player,type=!#items_and_non_mobs,distance=..1.5] at @s run function kiwi2:upgrades/classes/reaper/excision_damage with storage kiwi:excision_damage pos
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=0}] at @s run kill @e[type=item_display,tag=reaper_excision_marker_display,limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=reaper_excision_marker,sort=nearest,scores={reaper_excision_timer=0}] at @s run kill @s