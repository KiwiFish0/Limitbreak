attribute @s minecraft:max_health modifier add monk_class_max_health 1 add_multiplied_total
attribute @s minecraft:attack_damage modifier add monk_class_attack_damage 3 add_value
attribute @s minecraft:attack_damage modifier add monk_class_attack_damage_multiplier 0.5 add_multiplied_total
attribute @s minecraft:movement_speed modifier add monk_class_movement_speed 0.15 add_multiplied_total
attribute @s minecraft:safe_fall_distance modifier add monk_class_safe_fall_distance 3 add_value
attribute @s minecraft:attack_knockback modifier add monk_class_safe_attack_knockback 0.5 add_value
effect give @s resistance infinite 0 true
function kiwi2:points/monk_conditioning_upgrades

item replace entity @s armor.head with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"head"}] 1
item replace entity @s armor.chest with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"chest"}] 1
item replace entity @s armor.legs with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"legs"}] 1
item replace entity @s armor.feet with stone_button[custom_name='{"color":"red","italic":false,"text":"No Armor Allowed"}',enchantments={"binding_curse":1},equippable={slot:"feet"}] 1