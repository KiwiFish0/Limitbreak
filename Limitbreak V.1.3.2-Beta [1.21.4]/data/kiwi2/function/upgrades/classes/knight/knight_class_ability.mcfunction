give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Taunt"}',consumable={consume_seconds:0,sound:"entity.iron_golem.repair",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"block.anvil.place"}]},use_cooldown={seconds:250},enchantment_glint_override=true]
effect give @s absorption 20 4 true
attribute @s knockback_resistance modifier add knight_kb_resist_ability 1 add_value
attribute @s explosion_knockback_resistance modifier add knight_explosion_kb_resist_ability 1 add_value
tag @s add knight_ability_used
particle trial_spawner_detection ~ ~1 ~ 0.2 0.5 0.2 0.1 75
function kiwi2:upgrades/classes/knight/knight_class_taunt
schedule function kiwi2:upgrades/classes/knight/knight_class_ability_remove 400t