attribute @s minecraft:max_health modifier add monk_class_max_health 1 add_multiplied_total
attribute @s minecraft:attack_damage modifier add monk_class_attack_damage 3 add_value
attribute @s minecraft:attack_damage modifier add monk_class_attack_damage_multiplier 0.5 add_multiplied_total
attribute @s minecraft:movement_speed modifier add monk_class_movement_speed 0.15 add_multiplied_total
attribute @s minecraft:safe_fall_distance modifier add monk_class_safe_fall_distance 3 add_value
attribute @s minecraft:attack_knockback modifier add monk_class_safe_attack_knockback 0.5 add_value
effect give @s resistance infinite 0 true
give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Stillness"}',consumable={consume_seconds:0,sound:"entity.breeze.inhale",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"block.bell.resonate"}]},use_cooldown={seconds:1},enchantment_glint_override=true]
give @p written_book[written_book_content={title:"The Way of Stillness",author:"",pages:['{"text":"INTRODUCTION\\n\\nAs a monk you need nothing except your body and fists.\\n\\nWeapons and armor are irrelevant and you cannot wield them.\\n\\nThe only way to become stronger is to gain more points."}','{"text":"STILLNESS\\n\\nYour class ability allows you to enter and exit Stillness.\\n\\nWhile active it slowly drains your experience in exchange for effects.\\n\\nSneak after hitting an enemy to slip behind them."}','{"text":"TALISMANS\\n\\nYou are able to craft and bless talismans.\\n\\nThis is the how you support other players passively as they can also wear talismans.\\n\\nHigher tier talismans give better effects."}','{"text":"ESSENTIALS\\n\\n- Manage your experience points, only enter Stillness if needed.\\n\\n- Craft talismans if any resources can be spared.\\n\\n- Fight head-on. You are built to take and return hits."}']}] 1

scoreboard objectives add monk_experience_levels dummy

item replace entity @s armor.head with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"head"}] 1
item replace entity @s armor.chest with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"chest"}] 1
item replace entity @s armor.legs with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"legs"}] 1
item replace entity @s armor.feet with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"feet"}] 1