title @a reset
title @a title [{"bold":true,"text":"DAY "},{"bold":true,"score":{"name":"world","objective":"Day"}},{"bold":true,"text":" SURVIVED!"}]
execute if score world Time matches 23999 if score world Rolled matches 1 run execute at @a[gamemode=survival] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16776960],fade_colors:[I;16761717]}]}}}}
execute if score world Time matches 23999 if score world Rolled matches 2 run execute at @a[gamemode=survival] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_twinkle:true,has_trail:true,colors:[I;65356],fade_colors:[I;7052380]}]}}}}
execute if score world Time matches 23999 if score world Rolled matches 3 run execute at @a[gamemode=survival] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;15437056]}]}}}}
execute if score world Time matches 23999 if score world Rolled matches 4 run execute at @a[gamemode=survival] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;6230015],fade_colors:[I;5616875]}]}}}}
execute if score world Time matches 23999 if score world Rolled matches 5 run execute at @a[gamemode=survival] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;16721034],fade_colors:[I;15430515]}]}}}}
execute if score world Time matches 23999 if score world Rolled matches 6 run execute at @a[gamemode=survival] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;10878807,6418431],fade_colors:[I;8383395]}]}}}}

execute if score world Time matches 23999 run scoreboard players enable @a Gather_Point
execute if score world Time matches 23999 run worldborder set 59999968

# World Upgrades
execute if score world Time matches 23999 run function kiwi2:upgrades/world_upgrades/world_upgrades_main
execute if score world Time matches 23999 run team join Player_Glow @a[team=!Player_Glow]

# Hide Wave Bossbars
execute if score world Time matches 23999 run bossbar set minecraft:wave_1 visible false
execute if score world Time matches 23999 run bossbar set minecraft:wave_2 visible false
execute if score world Time matches 23999 run bossbar set minecraft:wave_3 visible false

# Revive Dead Players
execute if score world Time matches 23999 as @a[gamemode=spectator] run effect give @s resistance 10 255 true
execute if score world Time matches 23999 as @a[gamemode=spectator,scores={limitbreak_chosen_class=1..}] at @s run function kiwi2:upgrades/classes/class_modifiers_regive
execute if score world Time matches 23999 as @a[gamemode=spectator] run gamemode survival @s
execute if score world Time matches 23999 run tag @a remove limitbreak_dead_player
execute if score world Time matches 23999 as @a run function kiwi2:points/point_milestones_regive_after_death

# Reward Chest
execute if score world Time matches 23999 if score world PointShopDayCount matches 3 run tellraw @a [{"color":"gold","obfuscated":true,"text":"xx"},{"bold":true,"color":"yellow","obfuscated":false,"text":" A reward chest has spawned! "},{"color":"gold","obfuscated":true,"text":"xx"}]
execute if score world Time matches 23999 if score world PointShopDayCount matches 3 run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 10000 0.7
execute if score world Reward matches 3 run function kiwi2:reward_chest/reward_chest_spawn
execute if score world Reward matches 4 run setblock ~ ~ ~ air replace
execute if score world Reward matches 4 run scoreboard players set world Reward 1
execute if score world Time matches 23999 run scoreboard players add world Reward 1

# Kill Spawner Minecarts
execute if score world Time matches 23999 run kill @e[type=spawner_minecart,tag=wave_mob]

# Boss Death Check
bossbar set boss_health visible false
execute if score world Boss_Death_Check matches 0 run scoreboard players set world Boss_Wave_Check 0

# Point Shop
execute if score world Time matches 23999 if score world PointShopDayCount matches 3 run title @a actionbar {"text": ">> POINT SHOP IS NOW AVAILABLE! <<","bold": true, "color": "gold"}
execute if score world Time matches 23999 if score world PointShopDayCount matches 3 run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 10000 0.7
execute if score world Time matches 23999 if score world PointShopDayCount matches 3 run function kiwi2:point_shop/point_shop_spawn
execute if score world Time matches 23999 if score world PointShopDayCount matches 3 run function kiwi2:point_shop/point_shop_roll
execute if score world Time matches 23999 if score world PointShopDayCount matches 4 if score world Time matches 23999 run kill @e[type=villager,tag=point_shop]
execute if score world Time matches 23999 if score world PointShopDayCount matches 4 if score world Time matches 23999 run scoreboard players set world PointShopDayCount 1
execute if score world Time matches 23999 run scoreboard players add world PointShopDayCount 1

# Intermission Day
execute if score world Time matches 23999 run scoreboard players add world IntermissionDayCount 1
execute if score world Time matches 23999 if score world IntermissionDayCount matches 11.. run function kiwi2:intermission_day

# Day 3 WAVE 2 Unlock
execute if score world Time matches 23999 if score world Day matches 3 run title @a subtitle {"bold":true,"color":"red","text":"A second wave of enemies will now spawn..."}
execute if score world Time matches 23999 if score world Day matches 3 at @a run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 10000 .1 1

# Day 4 Modifier FX
# execute if score world Time matches 23999 if score world Day matches 4 run title @a subtitle {"bold":true,"color":"green","text":"Mutated Waves Chance +10%"}
# execute if score world Time matches 23999 if score world Day matches 4 run scoreboard players add world Mutation 10
# execute if score world Time matches 23999 if score world Day matches 4 at @a run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 10000 .1 1

# Day 6 WAVE 3 Unlock
execute if score world Time matches 23999 if score world Day matches 6 run title @a subtitle {"bold":true,"color":"red","text":"A third wave of enemies will now spawn..."}
execute if score world Time matches 23999 if score world Day matches 6 at @a run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 10000 .1 1

# Day 9 Longer Nights Unlock
execute if score world Time matches 23999 if score world Day matches 9 run title @a subtitle {"bold":true,"color":"#7e2e2e","text":"Darkness devours light. The nights stretches on..."}
execute if score world Time matches 23999 if score world Day matches 9 at @a run playsound minecraft:ambient.cave master @a ~ ~ ~ 10000 1 1