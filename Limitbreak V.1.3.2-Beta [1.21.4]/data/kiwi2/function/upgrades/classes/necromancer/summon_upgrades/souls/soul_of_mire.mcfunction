execute unless entity @n[distance=..3,tag=skeleton,type=skeleton] run title @s actionbar {"color":"red", "text": "No valid summons nearby!"}
execute unless entity @n[distance=..3,tag=skeleton,type=skeleton] run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
execute unless entity @n[distance=..3,tag=skeleton,type=skeleton] run give @s minecraft:bone[minecraft:custom_name='{"italic":false,"text":"[ Soul of Mire ]"}',minecraft:lore=['{"color":"gray","italic":false,"text":"[","extra":[{"color":"dark_green","bold":false,"italic":false,"keybind":"key.use"},{"color":"gray","bold":false,"italic":false,"text":"] on a Skeleton summon to evolve it into a Bogged."}]}','""','{"color":"gray","italic":false,"text":"Upgrades:"}','{"color":"#d79e2b","italic":false,"text":"[ STAT ] ","extra":[{"color":"red","bold":false,"italic":false,"text":"+10 Health"}]}','{"color":"#d79e2b","italic":false,"text":"[ STAT ] ","extra":[{"color":"blue","bold":false,"italic":false,"text":"+0.1 Movement Speed"}]}','{"color":"#2070b6","italic":false,"text":"[ ON-HIT ] ","extra":[{"color":"gray","bold":false,"italic":false,"text":"Arrows shot by this entity apply the "},{"color":"#588640","bold":false,"italic":false,"text":"Poison I"},{"color":"gray","bold":false,"italic":false,"text":" debuff on enemies."}]}','""','{"color":"gray","italic":false,"text":"Existing weapons and armors will be carried over."}'],minecraft:rarity=uncommon,minecraft:enchantment_glint_override=true,minecraft:custom_data={necromancer_soul_of_mire:1b,necromancer_soul_upgrade:1b},minecraft:consumable={consume_seconds:0,animation:none,sound:"minecraft:entity.bogged.ambient",has_consume_particles:false},minecraft:item_model="minecraft:ender_eye"] 1

tag @n[distance=..3,limit=1,tag=necromancer_summon,type=skeleton] add remove_summon
tag @n[limit=1,tag=skeleton_check,type=slime,sort=nearest,predicate=kiwi2:necromancer_remove_entity] add remove_summon_check
effect give @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] invisibility infinite 0 true
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] at @s run summon bogged ~ ~ ~ {Tags:["bogged_convertion","necromancer_summon","skeleton"],Health:30,CustomNameVisible:1b,Team:"Player_Glow",PersistenceRequired:1b,CustomName:'"[ Bogged ]"', attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:follow_range",base:512},{id:"max_health",base:20,modifiers:[{id:"soul_of_mire_max_health",amount:10,operation:"add_value"}]},{id:"movement_speed",modifiers:[{id:"soul_of_mire_movement_speed",amount:0.1,operation:"add_value"}]}]}
ride @n[limit=1,tag=remove_summon_check,type=slime,sort=nearest] dismount
ride @n[limit=1,tag=remove_summon_check,type=slime,sort=nearest] mount @n[type=bogged,tag=bogged_convertion,limit=1,sort=nearest]
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] run data modify entity @e[type=bogged,tag=bogged_convertion,limit=1,sort=nearest] attributes set from entity @s attributes
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] run data modify entity @e[type=bogged,tag=bogged_convertion,limit=1,sort=nearest] HandItems set from entity @s HandItems
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] run data modify entity @e[type=bogged,tag=bogged_convertion,limit=1,sort=nearest] ArmorItems set from entity @s ArmorItems
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] run scoreboard players operation @e[type=bogged,tag=bogged_convertion,limit=1,sort=nearest] skeleton_identifier = @s skeleton_identifier
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] at @s run particle minecraft:falling_spore_blossom ~ ~1 ~ 0.5 0.8 0.5 0.2 30
execute as @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.8 0.5 0.2 25

tag @e[type=bogged,tag=bogged_convertion,limit=1,sort=nearest] remove bogged_convertion
tag @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] remove skeleton
tag @n[distance=..3,limit=1,tag=remove_summon,type=skeleton] remove necromancer_summon
tag @n[limit=1,tag=remove_summon_check,type=slime,sort=nearest] remove remove_summon_check
tp @n[limit=1,tag=remove_summon,type=skeleton] ~ -65 ~
kill @n[limit=1,tag=remove_summon,type=skeleton]