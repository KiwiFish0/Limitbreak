attribute @s max_health modifier add necromancer_class_max_health -0.3 add_multiplied_total
attribute @s attack_damage modifier add necromancer_class_attack_damage -0.4 add_multiplied_total
give @s echo_shard[custom_data={class_ability_item:1b},custom_name='{"color":"red","italic":false,"text":"Class Ability: Calcify"}',consumable={consume_seconds:0,sound:"entity.skeleton.converted_to_stray",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.skeleton.hurt"}]},use_cooldown={seconds:1},enchantment_glint_override=true]

scoreboard objectives add necromancer_soul_reap minecraft.custom:minecraft.mob_kills
scoreboard objectives add necromancer_current_souls dummy
scoreboard objectives add necromancer_call_switch dummy
item replace entity @s armor.head with player_head[custom_name='{"italic":false,"text":"Warped Skull"}',profile={id:[I;-1597416120,190858268,-1083277279,-999151371],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDY1YTA5ODdmMTU5MzM0MzgyZmIyMTkzOGM3ZTY0MzVlYTYzZDg4ODNhODQ0YTc4ZmNjYzE2MzJhYmRlZGI1MCJ9fX0="}]},equippable={slot:"head",equip_sound:"block.trial_spawner.ambient_ominous"},attribute_modifiers=[{id:"armor",type:"armor",amount:2,operation:"add_value",slot:"head"}],enchantments={"binding_curse":1},unbreakable={show_in_tooltip:true}] 1
item replace entity @s armor.chest with leather_chestplate[dyed_color=13748928,custom_name='{"text":"Rib Plating","italic":false}',attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:1,operation:"add_value",slot:"chest"}]},equippable={equip_on_interact:true,slot:"chest",equip_sound:"entity.skeleton.step",asset_id:"leather"},enchantments={"binding_curse":1},unbreakable={show_in_tooltip:true}] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=13684155,custom_name='{"text":"Femur Coating","italic":false}',attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:1,operation:"add_value",slot:"legs"}]},equippable={equip_on_interact:true,slot:"legs",equip_sound:"entity.skeleton.step",asset_id:"leather"},enchantments={"binding_curse":1},unbreakable={show_in_tooltip:true}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=13879997,custom_name='{"text":"Metatarsals","italic":false}',attribute_modifiers={modifiers:[{id:"armor",type:"armor",amount:1,operation:"add_value",slot:"feet"}]},equippable={equip_on_interact:true,slot:"feet",equip_sound:"entity.skeleton.step",asset_id:"leather"},enchantments={"binding_curse":1},unbreakable={show_in_tooltip:true}] 1

give @s minecraft:bone[minecraft:custom_name='{"italic":false,"text":"Calling Bone"}',minecraft:lore=['{"color":"gray","italic":false,"text":"[","extra":[{"color":"dark_green","bold":false,"italic":false,"keybind":"key.attack"},{"color":"gray","italic":false,"text":"] to cycle through command options."}]}','{"color":"gray","italic":false,"text":"[","extra":[{"color":"dark_green","bold":false,"italic":false,"keybind":"key.use"},{"color":"gray","italic":false,"text":"] to execute command to your summons."}]}','{"color":"gray","italic":false,"text":"[","extra":[{"color":"dark_green","bold":false,"italic":false,"keybind":"key.sneak"},{"color":"gray","italic":false,"text":" + "},{"color":"dark_green","bold":false,"italic":false,"keybind":"key.attack"},{"color":"gray","italic":false,"text":"] to view current summon capacity."}]}','" "','{"bold":true,"color":"#64B0C1","extra":[{"bold":false,"color":"gray","text":"  |  Attack the nearest valid entity to its own position."}],"italic":false,"text":"[ NEAREST ]"}','{"bold":true,"color":"#64B0C1","extra":[{"bold":false,"color":"gray","text":"  |  Attack a random valid entity around its position."}],"italic":false,"text":"[ RANDOM ]"}','{"bold":true,"color":"#64B0C1","extra":[{"bold":false,"color":"gray","text":"  |  Attack the closest valid entity to the player\'s position."}],"italic":false,"text":"[ PLAYER NEAREST ]"}','{"bold":true,"color":"#64B0C1","extra":[{"bold":false,"color":"gray","text":"  |  Gather around the current player\'s position."}],"italic":false,"text":"[ PLAYER POSITION ]"}','" "','{"color":"red","italic":false,"text":"Requires: ","extra":[{"bold":true,"color":"#a49f82","italic":false,"text":"[NECROMANCER]"},{"color":"red","italic":false,"text":" Class"}]}'],minecraft:rarity=epic,minecraft:enchantment_glint_override=true,minecraft:custom_data={necromancer_calling_bone:1b}] 1
give @s bone 8
give @s written_book[written_book_content={title:"Necromancy: A Practical Guide",author:"",pages:['{"text":"0. Death Envoy\\n\\nAs a necromancer, you have the capability to shift the tides of battle.\\n\\nThe systems of reanimation are very fickle.\\n\\nIt is recommended to read through them thoroughly."}','{"text":"1. ᛇ Souls\\n\\nSouls are an essential part of necromancy, it is needed to conjure any type of summon.\\n\\nYou can gain Souls by killing any type of mob which is then stored in your Soul Pool. Any act of using Souls will pull from this pool. "}','{"text":"1.1 ᛉ Max Souls\\n\\nAs you get stronger, so will your capacity for necromancy. Your Soul Pool will grow and you will be capable of storing more Souls.\\n\\nA bigger Soul Pool is always better as it you have more to pull from and store."}','{"text":"1.2 ᛟ Summon Capacity\\n\\nYou are only capable of controlling so much summons, any act of trying to summon more than you can handle will result in failure.\\n\\nThis can also be improved similarly to the Soul Pool."}','{"text":"1.3 Summon Catalysts\\n\\nDifferent summons require different catalysts, most are called \\"Charms\\". \\n\\nFor starters, craft a Hollow Skull by putting 8 bones together.\\n\\nRefer to the recipe book for other recipes."}','{"text":"1.4 Summon Upgrades\\n\\nMost base summons by themselves are not very powerful.\\n\\nSome upgrades are compatible with all summons but most are type-specific.\\n\\nRefer to the recipe book for their recipes."}','{"text":"1.5 Absorption\\n\\nYou can absorb summoned units to gain ⛃ Bone Density. This is used to upgrade your bone exoskeleton.\\n\\nDifferent summons give different values, in general the stronger the summon the more it gives."}','{"text":"1.6 Summon Commands\\n\\nYou can command your summons to target enemies using the Calling Bone.\\n\\nBe warned, summons are not completely under your control, some may misbehave.\\n\\nCommand details can be seen on the item."}','{"text":"2. Calcify\\n\\nYou are unable to wear armor normally because of your bone exoskeleton.\\n\\nThe only way to upgrade this exoskeleton is to absorb your own summons and assimilate their bones."}','{"text":"3. Final Notes\\n\\n- Read through the recipe book whenever you have spare time.\\n\\n- Manage a balance between absorbing and keeping summons.\\n\\n- Strategize using different summon compositions."}']}] 1

scoreboard objectives add necromancer_count dummy
scoreboard objectives add necromancer_summon_capacity dummy
scoreboard objectives add necromancer_soul_bar_max dummy
scoreboard objectives add necromancer_summon_lifetime dummy
scoreboard objectives add necromancer_summon_health dummy
scoreboard objectives add necromancer_bone_density dummy
scoreboard objectives add necromancer_bone_density_milestone dummy

scoreboard objectives add gravemite_gnawer_execute_max_health dummy
scoreboard objectives add gravemite_gnawer_execute_current_health dummy
scoreboard objectives add gravemite_gnawer_devour_timer dummy
scoreboard objectives add necromancer_summon_health_gnawer_add dummy
scoreboard objectives add necromancer_summon_health_ghoul_lifesteal dummy
scoreboard objectives add necromancer_summon_health_revenant_lifesteal dummy
scoreboard players set world necromancer_summon_health_gnawer_add 2
scoreboard players set world necromancer_summon_health_ghoul_lifesteal 2
scoreboard players set world necromancer_summon_health_revenant_lifesteal 4
scoreboard players set @s necromancer_bone_density 0
scoreboard players set @s necromancer_bone_density_milestone 10

scoreboard players set world necromancer_count 0
scoreboard players set @s necromancer_summon_capacity 5
scoreboard players set @s necromancer_soul_bar_max 100
tag @s add necromancer_soul_bar_not_shown

recipe give @s kiwi2:necromancer_calling_bone
recipe give @s kiwi2:necromancer_hollow_skull
recipe give @s kiwi2:necromancer_bone_charm
recipe give @s kiwi2:necromancer_flesh_charm
recipe give @s kiwi2:necromancer_gunpowder_charm
recipe give @s kiwi2:necromancer_withered_charm
recipe give @s kiwi2:necromancer_gravebound_charm

recipe give @s kiwi2:necromancer_soul_of_hunger_upgrade
recipe give @s kiwi2:necromancer_soul_of_unrest_upgrade
recipe give @s kiwi2:necromancer_soul_of_awakening_upgrade
recipe give @s kiwi2:necromancer_soul_of_frost_upgrade
recipe give @s kiwi2:necromancer_soul_of_mire_upgrade
recipe give @s kiwi2:necromancer_soul_of_burden_upgrade
recipe give @s kiwi2:necromancer_soul_of_burrowing_upgrade
recipe give @s kiwi2:necromancer_soul_of_reclamation_upgrade
recipe give @s kiwi2:necromancer_soul_of_ash_upgrade
recipe give @s kiwi2:necromancer_volatile_powder_upgrade
recipe give @s kiwi2:necromancer_charged_core_upgrade

recipe give @s kiwi2:necromancer_wooden_sword_upgrade
recipe give @s kiwi2:necromancer_stone_sword_upgrade
recipe give @s kiwi2:necromancer_iron_sword_upgrade
recipe give @s kiwi2:necromancer_golden_sword_upgrade
recipe give @s kiwi2:necromancer_diamond_sword_upgrade
recipe give @s kiwi2:necromancer_netherite_sword_upgrade

recipe give @s kiwi2:necromancer_leather_set_upgrade
recipe give @s kiwi2:necromancer_chainmail_set_upgrade
recipe give @s kiwi2:necromancer_iron_set_upgrade
recipe give @s kiwi2:necromancer_golden_set_upgrade
recipe give @s kiwi2:necromancer_diamond_set_upgrade
recipe give @s kiwi2:necromancer_netherite_set_upgrade

bossbar add minecraft:soul_bar {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar2 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar3 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar4 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar5 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar6 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar7 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar8 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar9 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar add minecraft:soul_bar10 {"text": "Souls","bold": true,"color":"#95e8f0"}
bossbar set soul_bar color blue
bossbar set soul_bar2 color blue
bossbar set soul_bar3 color blue
bossbar set soul_bar4 color blue
bossbar set soul_bar5 color blue
bossbar set soul_bar6 color blue
bossbar set soul_bar7 color blue
bossbar set soul_bar8 color blue
bossbar set soul_bar9 color blue
bossbar set soul_bar10 color blue
bossbar set soul_bar style notched_10
bossbar set soul_bar2 style notched_10
bossbar set soul_bar3 style notched_10
bossbar set soul_bar4 style notched_10
bossbar set soul_bar5 style notched_10
bossbar set soul_bar6 style notched_10
bossbar set soul_bar7 style notched_10
bossbar set soul_bar8 style notched_10
bossbar set soul_bar9 style notched_10
bossbar set soul_bar10 style notched_10

schedule function kiwi2:upgrades/classes/necromancer/necromancer_soul_bar_initialize 10t
schedule function kiwi2:upgrades/classes/necromancer/necromancer_soul_bar_update 10t