execute as @a if score @s winded_cooldown matches 1..20 run scoreboard players remove @s winded_cooldown 1
execute as @a if score @s colossal_cooldown matches 1..90 run scoreboard players remove @s colossal_cooldown 1

execute as @a if score @s skill_crescent_slash matches 1..600 run scoreboard players remove @s skill_crescent_slash 1
execute as @a at @s if score @s skill_crescent_slash matches 1 run function kiwi:enchantment_function/crescent_slash_ready

execute as @a if score @s skill_thousand_cuts_cooldown matches 1..2400 run scoreboard players remove @s skill_thousand_cuts_cooldown 1
execute as @a at @s if score @s skill_thousand_cuts_cooldown matches 1 run function kiwi:enchantment_function/thousand_cuts_ready
execute as @e[tag=thousand_cuts_target] if score @s skill_thousand_cuts matches 1..60 run function kiwi:enchantment_function/thousand_cuts_fx

execute as @a at @s if score @s skill_redirect matches 1..100 run function kiwi:enchantment_function/redirect_ux
execute as @a at @s if score @s skill_redirect_cooldown matches 1..3000 run scoreboard players remove @s skill_redirect_cooldown 1
execute as @a at @s if score @s skill_redirect_cooldown matches 1 run function kiwi:enchantment_function/redirect_ready

execute as @a at @s if score @s skill_oversunder_cooldown matches 1..6000 run scoreboard players remove @s skill_oversunder_cooldown 1
execute as @a at @s if score @s skill_oversunder_cooldown matches 1 run function kiwi:enchantment_function/oversunder_ready

execute as @a at @s if score @s skill_crush matches 1..3200 run scoreboard players remove @s skill_crush 1
execute as @a at @s if score @s skill_crush matches 1 run function kiwi:enchantment_function/crush_ready

execute as @a at @s if score @s skill_arrow_rain_cooldown matches 1..12000 run scoreboard players remove @s skill_arrow_rain_cooldown 1
execute as @a at @s if score @s skill_arrow_rain_cooldown matches 1 run function kiwi:enchantment_function/arrow_rain_ready

execute as @a at @s if score @s cinderstorm_rod_cooldown matches 1..2400 run scoreboard players remove @s cinderstorm_rod_cooldown 1
execute as @a at @s if score @s cinderstorm_rod_cooldown matches 1 run function kiwi:enchantment_function/cinderstorm_rod_ready

execute if entity @a[scores={smoldering_sigil_cooldown=1..24000}] as @a[scores={smoldering_sigil_cooldown=1..24000}] at @s run scoreboard players remove @s smoldering_sigil_cooldown 1
execute if entity @a[scores={smoldering_sigil_cooldown=0}] as @a[nbt={SelectedItem:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{smoldering_sigil:1b}}}},scores={smoldering_sigil_cooldown=0}] at @s if predicate kiwi3:player_sneak run function kiwi:enchantment_function/smoldering_sigil_summon

execute as @a[advancements={kiwi:gravity_wand=true}] at @s run function kiwi:enchantment_function/gravitron_summon
execute as @e[tag=gravitron_orb_player] at @s run function kiwi:enchantment_function/gravitron_lifetime
execute at @e[type=minecraft:arrow,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"kiwi:railgun":1}}}}}] run function kiwi:divine_weapons/world_piercer/world_piercer_tick
execute if entity @e[type=armor_stand,tag=arrow_rain_target] as @e[type=armor_stand,tag=arrow_rain_target] run function kiwi:enchantment_function/arrow_rain_rain
execute as @e[tag=sabotage_target] if score @s sabotage_cooldown matches 1..20 run function kiwi:enchantment_function/tier_1/sabotage_tick
kill @e[type=arrow,tag=spawned_arrow,nbt={inGround:1b}]
execute at @e[type=minecraft:shulker_bullet,tag=flower_hat_spore] as @e[distance=..3,type=!shulker_bullet,type=!player,type=!#impact_projectiles,type=!item,type=!#boat,type=!item_frame,type=!glow_item_frame,type=!painting] run function kiwi:enchantment_function/tier_3/flower_hat/flower_hat_spore