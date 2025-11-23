scoreboard players set @s StatCheck 0
scoreboard players enable @s StatCheck
execute store result storage kiwi:stat_storage pos.x double 0.1 run attribute @s max_health get 10
execute store result storage kiwi:stat_storage pos.a double 0.1 run attribute @s armor get 10
execute store result storage kiwi:stat_storage pos.t double 0.1 run attribute @s armor_toughness get 10
execute store result storage kiwi:stat_storage pos.y double 0.1 run attribute @s attack_damage get 10
execute store result storage kiwi:stat_storage pos.z double 0.1 run attribute @s attack_speed get 10
execute store result storage kiwi:stat_storage pos.m double 0.1 run attribute @s movement_speed get 10
execute store result storage kiwi:stat_storage pos.s double 0.1 run attribute @s scale get 10
execute store result storage kiwi:stat_storage pos.r double 0.1 run attribute @s entity_interaction_range get 10
tellraw @s {"color":"white","text":"----------------------------------------------"}
tellraw @s [{"bold":true,"color":"green","italic":false,"selector":"@s"},{"color":"white","text":"'s Stats"}]
tellraw @s {"color":"white","text":"----------------------------------------------"}
execute run function kiwi2:points/stat_checker/player_stats_tellraw_max_health with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_armor with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_armor_toughness with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_attack_damage with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_attack_speed with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_movement_speed with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_scale with storage kiwi:stat_storage pos
execute run function kiwi2:points/stat_checker/player_stats_tellraw_reach with storage kiwi:stat_storage pos
tellraw @s {"color":"white","text":"----------------------------------------------"}