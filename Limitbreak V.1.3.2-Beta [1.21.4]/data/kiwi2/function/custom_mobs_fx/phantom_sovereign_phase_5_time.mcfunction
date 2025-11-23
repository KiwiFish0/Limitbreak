execute if score @s phantom_sovereign_phase_5_timer matches 40 run playsound minecraft:block.glass.break master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 80 run playsound minecraft:block.glass.break master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 100 run playsound minecraft:block.glass.break master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 120 run playsound minecraft:block.glass.break master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 130 run playsound minecraft:block.glass.break master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 140 run playsound minecraft:block.glass.break master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 160 run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 200 run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches ..200 as @a at @s run tp @s ~ ~ ~ facing entity @e[type=phantom,tag=boss,tag=phantom_sovereign,limit=1,sort=nearest] eyes
execute if score @s phantom_sovereign_phase_5_timer matches 200 run tellraw @a {"text": "The border has been hijacked.", "color": "#fa285e","bold":true}
execute if score @s phantom_sovereign_phase_5_timer matches 200 run worldborder center ~ ~
execute if score @s phantom_sovereign_phase_5_timer matches 200 run worldborder set 75 60
execute if score @s phantom_sovereign_phase_5_timer matches 200 run worldborder damage amount 8
execute if score @s phantom_sovereign_phase_5_timer matches 260..3699 run title @a actionbar {"text": ">> SURVIVE <<", "color": "red", "bold": true}
execute if score @s phantom_sovereign_phase_5_timer matches 260 run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 260 run function kiwi2:custom_mobs_fx/phantom_sovereign_screech
execute if score @s phantom_sovereign_phase_5_timer matches 260 run scoreboard players set @s mob_fourth_skill_counter 1100
execute if score @s phantom_sovereign_phase_5_timer matches 1450 run worldborder set 74 600000
execute if score @s phantom_sovereign_phase_5_timer matches 3699 run kill @e[type=fireball]
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run tag @s add phantom_sovereign_defeat
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run worldborder set 30
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run spreadplayers ~ ~ 2 15 false @a
execute if score @s phantom_sovereign_phase_5_timer matches 3700..3900 run title @a actionbar {"text": ">> GET TO COVER <<", "color": "red", "bold": true}
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run tellraw @a {"text": "The Sovereign's dying howl unravels the sky itself.", "bold": true}
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run function kiwi2:custom_mobs_fx/phantom_sovereign_screech
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run function kiwi2:custom_mobs_fx/phantom_sovereign_mega_meteor
execute if score @s phantom_sovereign_phase_5_timer matches 3700 run tp @s ~ ~320 ~
execute if score @s phantom_sovereign_phase_5_timer matches 3700..3720 as @a at @s run tp @s ~ ~ ~ facing entity @e[type=fireball,tag=phantom_sovereign_mega_meteor,limit=1] eyes
execute if score @s phantom_sovereign_phase_5_timer matches 3700.. run tp @e[type=block_display,tag=phantom_sovereign_mega_meteor_display,limit=1] @e[type=fireball,tag=phantom_sovereign_mega_meteor,limit=1]
execute if score @s phantom_sovereign_phase_5_timer matches 3890..3920 as @a at @s run particle minecraft:flash ~ ~2 ~ 0.2 0.2 0.2 1 20
execute if score @s phantom_sovereign_phase_5_timer matches 3930 run worldborder set 200
execute if score @s phantom_sovereign_phase_5_timer matches 3930 run tp @s ~ ~-340 ~
execute if score @s phantom_sovereign_phase_5_timer matches 4000 run tellraw @a [{"color":"#490086","text":"[Phantom Sovereign]","bold": true},{"color":"#4F3BD1","text":" . . .", "bold":false}]
execute if score @s phantom_sovereign_phase_5_timer matches 4000 run title @a actionbar {"text": "IT IS DONE", "color": "white", "bold": true}
execute if score @s phantom_sovereign_phase_5_timer matches 4000 run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 4100 run title @a actionbar {"text": "FINISH WHAT YOU STARTED", "color": "white", "bold": true}
execute if score @s phantom_sovereign_phase_5_timer matches 4100 run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 10000 0
execute if score @s phantom_sovereign_phase_5_timer matches 3930 run data merge entity @e[type=block_display,tag=phantom_sovereign_mega_meteor_display,limit=1,sort=nearest] {Glowing:0b}
execute if score @s phantom_sovereign_phase_5_timer matches 3700..4000 if predicate kiwi2:chance_random_20 at @e[type=fireball,tag=phantom_sovereign_mega_meteor] run summon lightning_bolt
execute if score @s phantom_sovereign_phase_5_timer matches 3700..4000 if predicate kiwi2:chance_random_20 at @e[type=fireball,tag=phantom_sovereign_mega_meteor] run playsound entity.generic.explode ambient @a ~ ~ ~ 10 0
execute if score @s phantom_sovereign_phase_5_timer matches 3890..3910 if predicate kiwi2:chance_random_20 at @e[type=fireball,tag=phantom_sovereign_mega_meteor] run playsound entity.generic.explode ambient @a ~ ~ ~ 10 0
execute if score @s phantom_sovereign_phase_5_timer matches 4500.. run scoreboard objectives remove phantom_sovereign_phase_5_timer