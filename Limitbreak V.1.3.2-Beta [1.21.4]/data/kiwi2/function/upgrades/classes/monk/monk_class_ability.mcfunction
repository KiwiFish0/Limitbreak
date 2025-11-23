give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Stillness"}',consumable={consume_seconds:0,sound:"entity.breeze.inhale",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"block.bell.resonate"}]},use_cooldown={seconds:1},enchantment_glint_override=true]
execute store result score @s monk_experience_levels run xp query @s levels
execute unless score @s monk_experience_levels matches 0 if entity @s[tag=monk_stillness_on] run tag @s add monk_was_using_stillness
execute unless score @s monk_experience_levels matches 0 run tag @s[tag=monk_was_using_stillness] remove monk_stillness_on
execute unless score @s monk_experience_levels matches 0 run attribute @s[tag=monk_was_using_stillness] knockback_resistance base reset
execute unless score @s monk_experience_levels matches 0 run attribute @s[tag=monk_was_using_stillness] explosion_knockback_resistance base reset
execute unless score @s monk_experience_levels matches 0 run tag @s[tag=!monk_was_using_stillness] add monk_stillness_on
execute unless score @s monk_experience_levels matches 0 run attribute @s[tag=!monk_was_using_stillness] knockback_resistance base set 1
execute unless score @s monk_experience_levels matches 0 run attribute @s[tag=!monk_was_using_stillness] explosion_knockback_resistance base set 1
execute unless score @s monk_experience_levels matches 0 run tag @s remove monk_was_using_stillness

execute if entity @s[tag=monk_stillness_on] if score @s monk_experience_levels matches 1.. run function kiwi2:upgrades/classes/monk/monk_stillness_fx
execute if score @s monk_experience_levels matches 0 run title @s actionbar {"text": "Not enough XP levels!","color": "red","bold": true}
execute if score @s monk_experience_levels matches 0 run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0