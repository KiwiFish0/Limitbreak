scoreboard objectives add reaper_excision_timer dummy
scoreboard objectives add reaper_excision_rotation dummy
scoreboard objectives add reaper_excision_damage dummy
give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Excision"}',consumable={consume_seconds:0,sound:"entity.breeze.charge",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"block.trial_spawner.ominous_activate"}]},use_cooldown={seconds:150},enchantment_glint_override=true]
execute anchored eyes positioned ^ ^-1 ^ summon armor_stand run function kiwi2:upgrades/classes/reaper/excision_launch_logic
summon item_display ~ ~ ~ {Tags:["reaper_excision_marker_display"],item:{id:"minecraft:iron_hoe",count:1},transformation:{translation:[0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[2.5f,1f,2.5f],right_rotation:[0.714f,0f,0f,0.7f]},teleport_duration:1}
scoreboard players add @e[type=armor_stand,tag=reaper_excision_marker,limit=1,sort=nearest] reaper_excision_timer 100
schedule function kiwi2:upgrades/classes/reaper/excision_spin 1t