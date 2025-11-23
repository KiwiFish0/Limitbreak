attribute @s minecraft:armor modifier add apothecary_armor -0.2 add_multiplied_total
attribute @s minecraft:max_health modifier add apothecary_max_health -0.2 add_multiplied_total
effect give @s regeneration infinite 0 true
give @s iron_sword[attribute_modifiers=[{id:"herbalist_knife_attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"}],custom_name='{"italic":false,"text":"Herbalist\'s Knife"}'] 1
give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: The Elixir"}',consumable={consume_seconds:3,sound:"item.bottle.fill",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"block.brewing_stand.brew"}],animation:"none"},use_cooldown={seconds:1200},enchantment_glint_override=true]
give @s player_head[profile={id:[I;1837667432,-1388362102,-2143913502,939769621],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFlZTZkMmZkOTRmZThhNTZjYWQwZGEwZWZjODE4OGVjMzU5MzRmMjI1MzMwZmUwNGQ0NjU1ZGNiYWRjMDY3NyJ9fX0="}]},custom_name='{"italic":false,"text":"Apothecarist Cowl"}',attribute_modifiers=[{id:"apothecarist_cowl__armor",type:"armor",amount:2,operation:"add_value",slot:"head"}],enchantable={value:15}] 1
give @s leather_chestplate[custom_name='{"italic":false,"text":"Aged Robes"}',dyed_color=16768926] 1
give @s leather_leggings[custom_name='{"italic":false,"text":"Aged Galli-Gaskins"}',dyed_color=14397810] 1
give @s leather_boots[custom_name='{"italic":false,"text":"Potion-Stained Jackboots"}',dyed_color=15124383] 1
give @s brewing_stand 1
give @s cauldron
give @s bundle[custom_name='{"italic":false,"text":"Apothecarist\'s Pouch"}',bundle_contents=[{id:"minecraft:nether_wart",count:12},{id:"minecraft:ghast_tear",count:2},{id:"minecraft:blaze_powder",count:8},{id:"minecraft:sugar",count:16},{id:"minecraft:gunpowder",count:6},{id:"minecraft:glowstone_dust",count:8},{id:"minecraft:fermented_spider_eye",count:2},{id:"minecraft:spider_eye",count:6}]] 1
give @s splash_potion[potion_contents={potion:"minecraft:strong_regeneration"}] 1
give @s splash_potion[potion_contents={potion:"minecraft:poison"}] 1
give @s splash_potion[potion_contents={potion:"minecraft:harming"}] 1
give @s splash_potion[potion_contents={potion:"minecraft:healing"}] 1
recipe give @s kiwi2:apothecarist_duplicate_blaze_powders
recipe give @s kiwi2:apothecarist_glistering_melon_slice
recipe give @s kiwi2:apothecarist_instant_awkward_potions
recipe give @s kiwi2:apothecarist_instant_fermented_spider_eye
recipe give @s kiwi2:apothecarist_duplicate_nether_warts
give @s written_book[written_book_content={title:"Materia Medica",author:"",pages:['{"text":">> Initiation\\n\\nAs an apothecarist, you are equipped with a starter pouch and some useful beginner potions.\\n\\nYour elixir-infused constitution also provides you with natural health regeneration even without saturation.\\n"}','{"text":">> Short-hand Forms\\n\\nYou also know some short-hand crafting recipes of various ingredients relevant to brewing.\\n\\nMake sure to use these recipes instead of the normal ones to save on material costs."}','{"text":">> The Elixir\\n\\nYour class ability brews a powerful elixir which can change the fate of the battle.\\n\\nUse these elixirs wisely as the cooldown for this ability is very long."}','{"text":">> Notes\\n\\n- Strategize with your team before battles to maximize your supportive abilities.\\n\\n- Although this class is made to be a support, it is also still strong enough to be on the frontlines if need be."}']}] 1
