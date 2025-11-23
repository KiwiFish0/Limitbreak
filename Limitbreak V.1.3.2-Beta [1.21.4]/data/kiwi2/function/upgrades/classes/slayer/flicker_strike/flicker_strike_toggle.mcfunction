particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.8 0.4 1 50
particle minecraft:trial_spawner_detection ~ ~ ~ 0.4 0.8 0.4 0.5 100
playsound minecraft:block.vault.reject_rewarded_player master @a[distance=..128] ~ ~ ~ 10 2
tag @s add flicker_strike_ready
execute store result storage kiwi:quickdraw_damage pos.x float 1 run scoreboard players get @s slayer_quickdraw_damage
scoreboard players set @s class_ability_scoreboard 10
give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Quickdraw"}',consumable={consume_seconds:0,sound:"item.wolf_armor.break",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"item.wolf_armor.break"}]},use_cooldown={seconds:210},enchantment_glint_override=true] 1
function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_duration