attribute @s minecraft:max_health modifier add magus_class_max_health -0.3 add_multiplied_total
attribute @s minecraft:armor modifier add magus_class_armor -0.2 add_multiplied_total
attribute @s minecraft:armor_toughness modifier add magus_class_armor_toughness -0.2 add_multiplied_total

give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Apotheosis"}',consumable={consume_seconds:0,sound:"entity.illusioner.mirror_move",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.illusioner.cast_spell"}]},use_cooldown={seconds:600},enchantment_glint_override=true]
give @p player_head[profile={id:[I;1628564363,-1704109287,-2019739351,-1517138425],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJiYzAwMGE0MGEyMWQ1NjcwNTg1NjIwNjZiZmE5NWRiYTk1MjM0MGQzYTYxZjE2YjdmNDIwYTRiYjcxYTBkZSJ9fX0="}]},custom_name='{"italic":false,"text":"Magus Veil"}',attribute_modifiers=[{id:"armor",type:"armor",amount:1,operation:"add_value",slot:"head"},{id:"gravity",type:"gravity",amount:-0.04,operation:"add_value",slot:"head"}]] 1
give @p leather_chestplate[dyed_color=11221048,custom_name='{"italic":false,"text":"Mystic Red Robes"}',attribute_modifiers=[{id:"safe_fall_distance",type:"safe_fall_distance",amount:4,operation:"add_value",slot:"chest"}]] 1
give @p leather_leggings[custom_name='{"italic":false,"text":"Red Hakama"}',attribute_modifiers=[{id:"sneaking_speed",type:"sneaking_speed",amount:0.3,operation:"add_value",slot:"legs"}],dyed_color=11349807] 1
give @p leather_boots[custom_name='{"italic":false,"text":"Soft Leather Boots"}',attribute_modifiers=[{id:"armor",type:"armor",amount:1,operation:"add_value",slot:"feet"}],dyed_color=11548471] 1
give @s stick 2
give @s amethyst_shard 1
give @s written_book[written_book_content={title:"A Beginner's Guide to Magic",author:"",pages:['{"text":"--- Foundations ---\\n\\nThose bound by the arcane are unable to wield ordinary weapons.\\n\\nUse Mana to cast spells using wands. Many types of spells exist from offense, defense, and even utility."}','{"text":"---- ✦ Max Mana ----\\n\\nYou can only store so much Mana at a time.\\n\\nYou will fail to cast spells if the Mana you have is insufficient.\\n\\nMaximum mana can be upgraded through Points."}','{"text":"--- ⇵ Mana Regen ---\\n\\nYou regenerate mana passively every second.\\n\\nAs you reach certain milestones you may be able to upgrade your mana regeneration rate."}','{"text":"------ Spells ------\\n\\nThere are three tiers of spells, each tier requires an equal tier wand to cast.\\n\\nAs long as you have the required amount of mana, the corresponding tier wand, and the spell selected you are able to cast it."}','{"text":"------ Wands ------\\n\\nThere are different tiers and variations of wands.\\n\\nEach wand has different:\\n- Casting Speed\\n- Mana Efficiency\\n- Stability\\n\\nRefer to the recipe book for recipes."}','{"text":"-- Unstable Spells --\\n\\nCasting magic will always be risky, there is a chance of instability.\\n\\nUnstable spells will still cast most of the time but will behave differently.\\n\\nExperiment to find out spell properties."}','{"text":"---- Apotheosis ----\\n\\nYour class ability is very simple.\\n\\nFor a short duration your mana regen will be multiplied by five.\\n\\nUse this timeframe to chain spell combos and wreak havoc with the arcane."}','{"text":"-- The Short Form --\\n\\n- Manage your mana wisely.\\n\\n- Experiment with different spells and interactions.\\n\\n- Use all three tiers of wands.\\n\\n- Keep distance, most spells are ranged."}']}] 1

scoreboard objectives add magus_mana_bar_max dummy
scoreboard objectives add magus_mana_bar dummy
scoreboard objectives add magus_mana_regen dummy
scoreboard objectives add magus_count dummy
scoreboard objectives add magus_spell_tier_1 dummy
scoreboard objectives add magus_spell_tier_2 dummy
scoreboard objectives add magus_spell_tier_3 dummy
scoreboard objectives add magus_unstable_spell dummy

scoreboard objectives add spell_cost_current dummy
scoreboard objectives add mana_efficiency dummy

scoreboard players set @s magus_mana_bar_max 100
scoreboard players set @s magus_mana_bar 100
scoreboard players set @s magus_mana_regen 1
scoreboard players set world magus_count 0
scoreboard players set @s magus_spell_tier_1 0
scoreboard players set @s magus_spell_tier_2 0
scoreboard players set @s magus_spell_tier_3 0
scoreboard players set @s magus_unstable_spell 0
bossbar add minecraft:mana_bar {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar2 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar3 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar4 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar5 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar6 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar7 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar8 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar9 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar add minecraft:mana_bar10 {"text": "Mana","bold": true,"color":"#4f8dbf"}
bossbar set mana_bar color blue
bossbar set mana_bar2 color blue
bossbar set mana_bar3 color blue
bossbar set mana_bar4 color blue
bossbar set mana_bar5 color blue
bossbar set mana_bar6 color blue
bossbar set mana_bar7 color blue
bossbar set mana_bar8 color blue
bossbar set mana_bar9 color blue
bossbar set mana_bar10 color blue
tag @s add magus_mana_bar_not_shown
tag @s add limitbreak_non_melee_class
schedule function kiwi2:upgrades/classes/magus/magus_mana_bar_initialize 10t
schedule function kiwi2:upgrades/classes/magus/magus_mana_bar_update 10t
recipe give @s kiwi2:magus_amethyst_wand_tier_1
recipe give @s kiwi2:magus_amethyst_wand_tier_2
recipe give @s kiwi2:magus_amethyst_wand_tier_3
recipe give @s kiwi2:magus_aquatic_wand_tier_1
recipe give @s kiwi2:magus_aquatic_wand_tier_2
recipe give @s kiwi2:magus_aquatic_wand_tier_3
recipe give @s kiwi2:magus_nether_wand_tier_1
recipe give @s kiwi2:magus_nether_wand_tier_2
recipe give @s kiwi2:magus_nether_wand_tier_3
recipe give @s kiwi2:magus_netherite_wand_tier_1
recipe give @s kiwi2:magus_netherite_wand_tier_2
recipe give @s kiwi2:magus_netherite_wand_tier_3