scoreboard objectives add magus_apotheosis_timer dummy
scoreboard players add @s magus_apotheosis_timer 600
scoreboard players operation @s magus_mana_regen *= world LimitbreakValue5
give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Apotheosis"}',consumable={consume_seconds:0,sound:"entity.illusioner.mirror_move",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.illusioner.cast_spell"}]},use_cooldown={seconds:600},enchantment_glint_override=true]
tellraw @s {"text": "The surrounding mana favors you...","color": "blue"}
playsound minecraft:block.beacon.power_select master @a[distance=..48] ~ ~ ~ 10 0.7
schedule function kiwi2:upgrades/classes/magus/magus_class_ability_remove 1t