execute store result storage kiwi:damage_blocked pos.x int 0.1 run scoreboard players get @s player_block_damage_check
execute at @s[tag=redirect_player] as @e[distance=..6,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame,limit=1,sort=nearest] run function kiwi:enchantment_function/damage_command_macro with storage kiwi:damage_blocked pos
execute as @e[distance=..6,limit=11,sort=nearest,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame] at @s run particle block_crumble{block_state:"dirt"} ~ ~2 ~ 2 1 2 1 30
execute as @e[distance=..8,limit=11,sort=nearest,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame] at @s run particle gust ~ ~1 ~ 0.5 0.5 0.5 1 3
execute at @s run particle minecraft:dust_plume ~ ~ ~ 1 1 1 0.5 200
execute at @s run particle poof ~ ~1 ~ 0.5 0.5 0.5 0.2 50
execute as @e[distance=..8,limit=4,sort=nearest,type=!player,type=!item,type=!#impact_projectiles,type=!armor_stand,type=!painting,type=!#boat,type=!item_frame] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,DeathTime:20,Invisible:1b,Health:0f,attributes:[{id:"minecraft:max_health",base:0}],active_effects:[{id:"minecraft:wind_charged",amplifier:1,duration:20,show_particles:0b}]}
execute at @s[tag=redirect_player] run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..12] ~ ~ ~ 1 0.5
scoreboard objectives remove player_block_damage_check
tag @s remove redirect_player
scoreboard players set @s skill_redirect_cooldown 3000