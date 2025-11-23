tag @s add phantom_sovereign_phase_5
data merge entity @s {Invulnerable:1b}
function kiwi2:custom_mobs_fx/phantom_sovereign_screech
execute at @e[type=phantom,tag=phantom_sovereign,tag=boss,limit=1] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 5 5 5 0.7 750
execute at @e[type=phantom,tag=phantom_sovereign,tag=boss,limit=1] run particle gust_emitter_large ~ ~1 ~ 15 15 15 1 50 normal
scoreboard objectives add phantom_sovereign_phase_5_timer dummy
scoreboard players set @s mob_second_skill_counter 0
scoreboard players set @s mob_third_skill_counter 0
scoreboard players set @s mob_fourth_skill_counter 0
kill @e[type=phantom,tag=!boss]
kill @e[type=vex,tag=nyxian_wind]
tellraw @a [{"color":"#490086","text":"[Phantom Sovereign]","bold": true},{"color":"#4F3BD1","font":"alt","text":" Your time fractures. Survive if you can.", "bold": false}]