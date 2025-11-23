attribute @s minecraft:max_health modifier add slayer_class_max_health -0.3 add_multiplied_total
attribute @s minecraft:attack_damage modifier add slayer_class_attack_damage 0.1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add slayer_class_movement_speed 0.25 add_multiplied_total
attribute @s minecraft:step_height modifier add slayer_class_step_height 0.6 add_value

scoreboard objectives add slayer_quickdraw_damage dummy
scoreboard objectives add flicker_strike_hit_duration dummy
scoreboard players set @s slayer_quickdraw_damage 7

give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Quickdraw"}',consumable={consume_seconds:0,sound:"item.wolf_armor.break",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"item.wolf_armor.break"}]},use_cooldown={seconds:210},enchantment_glint_override=true]
give @s iron_sword[custom_name='{"italic":false,"text":"Trusty Iron Sword"}'] 1
give @s iron_sword[custom_name='{"italic":false,"text":"Loyal Side-Blade"}',attribute_modifiers={modifiers:[{id:"attack_damage",type:"attack_damage",amount:+2,operation:"add_value",slot:"offhand"}],show_in_tooltip:true}] 1
give @s player_head[profile={id:[I;-1920315030,-1855765859,-1299008781,1441515173],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjE4MzAzYzgwOTJiYmVhOGY2MGM5ODMwMzU4MzE2NjI5ODlkODhlMGJkMDMxZTUzYzJjMmJiMmY2ZTcxZGZhZSJ9fX0="}]},custom_name='{"italic":false,"text":"Rusty Hooded Helmet"}',attribute_modifiers=[{id:"rusty_hooded_helmet_armor",type:"armor",amount:2,operation:"add_value",slot:"head"}],enchantable={value:15}] 1
give @s leather_chestplate[dyed_color=9216338] 1
give @s leather_leggings[dyed_color=8230499] 1
give @s iron_boots 1
give @s written_book[written_book_content={title:"Anatomy of Slaying",author:"",pages:['{"text":"<< SLAYER MANIFEST >>\\n\\nYou have only one purpose, to deal as much damage as possible.\\n\\nThis can be achieved in many ways, all of them involve violence.\\n\\nIn short, just attack without dying."}','{"text":"<< QUICKDRAW >>\\n\\nThis is your class ability, it is very straightforward.\\n\\nActivate it to get quickdraw charges marked using the ⫸ symbol.\\n\\nShift + right click to perform a quickdraw."}','{"text":"<< TACTICS >>\\n\\nMost of the time you won\'t need any tactics except to just attack.\\n\\nBut in a pinch you could use your speed to quickly get out.\\n\\nA feasible tactic is to play hit-and-run."}','{"text":"<< END >>\\n\\n- Focus on dealing damage, whether in bursts or consistently.\\n\\n- Use your superior speed to your advantage.\\n\\n- Quickdraw can also be used as mobility."}']}] 1