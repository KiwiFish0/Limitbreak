give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Power Stance"}',consumable={consume_seconds:0,sound:"block.vault.insert_item_fail",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"minecraft:block.vault.insert_item"}]},use_cooldown={seconds:1},enchantment_glint_override=true]

execute if entity @s[tag=hunter_power_shot_active] run tag @s add hunter_power_shot_was_active
execute run tag @s[tag=hunter_power_shot_was_active] remove hunter_power_shot_active
execute if entity @s[tag=hunter_power_shot_was_active] run particle dust_plume ~ ~1 ~ 0.7 0.8 0.7 0 80
execute if entity @s[tag=hunter_power_shot_was_active] run playsound minecraft:block.vault.insert_item master @a[distance=..24] ~ ~ ~ 1 2
execute if entity @s[tag=hunter_power_shot_was_active] run attribute @s movement_speed modifier remove hunter_power_shot_mov_speed
execute if entity @s[tag=hunter_power_shot_was_active] run attribute @s jump_strength modifier remove hunter_power_shot_jump_strength
execute run tag @s[tag=!hunter_power_shot_was_active] add hunter_power_shot_active
execute if entity @s[tag=!hunter_power_shot_was_active] as @e[type=#minecraft:hunter_projectiles,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:hunters_precision":1}}}}}] at @s run kill @s
execute if entity @s[tag=!hunter_power_shot_was_active] run particle dust_color_transition{from_color:[1, 0, 0],to_color:[0.5, 0.0, 0.0],scale:1} ~ ~1 ~ 0.7 0.8 0.7 0 80
execute if entity @s[tag=!hunter_power_shot_was_active] run playsound minecraft:item.mace.smash_air master @a[distance=..24] ~ ~ ~ 1 2
execute if entity @s[tag=!hunter_power_shot_was_active] run particle dust_pillar{block_state:dirt} ~ ~1 ~ 2 1 2 0 80
execute if entity @s[tag=!hunter_power_shot_was_active] run attribute @s movement_speed modifier add hunter_power_shot_mov_speed -1 add_multiplied_total
execute if entity @s[tag=!hunter_power_shot_was_active] run attribute @s jump_strength modifier add hunter_power_shot_jump_strength -1 add_multiplied_total
execute run tag @s remove hunter_power_shot_was_active