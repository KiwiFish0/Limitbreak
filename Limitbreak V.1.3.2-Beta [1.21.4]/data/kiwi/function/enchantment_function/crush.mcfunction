execute if score @p[nbt={SelectedItem:{id:"minecraft:mace"}},limit=1,sort=nearest] skill_crush matches 0 as @s run tag @p[nbt={SelectedItem:{id:"minecraft:mace"}},limit=1,sort=nearest] add crush_user
execute if score @p[tag=crush_user] skill_crush matches 0 run tag @s add crush_source
execute if score @p[tag=crush_user] skill_crush matches 0 at @s run tag @e[distance=4..8,limit=20,sort=nearest,type=!item,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,type=!#boat,type=!item_display,type=!text_display,type=!player] add crush_target_far
execute if score @p[tag=crush_user] skill_crush matches 0 at @s run tag @e[distance=..3,limit=20,sort=nearest,type=!item,type=!#impact_projectiles,type=!painting,type=!item_frame,type=!glow_item_frame,type=!#boat,type=!item_display,type=!text_display,type=!player] add crush_target_close
execute if score @p[tag=crush_user] skill_crush matches 0 run effect give @s slowness 1 255 true
execute if score @p[tag=crush_user] skill_crush matches 0 run tp @s ~ ~0.7 ~
execute if score @p[tag=crush_user] skill_crush matches 0 run title @p[tag=crush_user,limit=1,sort=nearest] actionbar {"text": "[CRUSH]","color": "gray","bold": true}
execute if score @p[tag=crush_user] skill_crush matches 0 as @p[tag=crush_user,limit=1,sort=nearest] at @s run function kiwi:enchantment_function/skill_activate_sound
execute if score @p[tag=crush_user] skill_crush matches 0 as @p[tag=crush_user,limit=1,sort=nearest] at @s run playsound minecraft:item.mace.smash_ground_heavy master @s ~ ~ ~ 1 0.1
execute if score @p[tag=crush_user] skill_crush matches 0 at @s run particle dust_pillar{block_state:"minecraft:dirt"} ~ ~0.8 ~ 2 1 2 1 500
execute if score @p[tag=crush_user] skill_crush matches 0 run schedule function kiwi:enchantment_function/crush_post_enchant 5t