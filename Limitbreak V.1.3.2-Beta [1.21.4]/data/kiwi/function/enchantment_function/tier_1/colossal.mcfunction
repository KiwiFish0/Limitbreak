particle dust_pillar{block_state:"minecraft:stone"} ~ ~ ~ 2 1 2 0.1 100 normal
particle dust_pillar{block_state:"minecraft:dirt"} ~ ~ ~ 2 1 2 0.1 100 normal
execute as @e[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":2}}}}}] if score @s colossal_cooldown matches 0 run particle trial_spawner_detection ~ ~ ~ 0.8 1 0.8 0.1 20 normal
execute as @e[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":3}}}}}] if score @s colossal_cooldown matches 0 run particle trial_spawner_detection ~ ~ ~ 0.8 1 0.8 0.1 20 normal
execute as @e if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":2}}}}}] if score @s colossal_cooldown matches 0 run execute as @e run damage @s[distance=..4, type=!player] 7.5 player_attack
execute as @e if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":2}}}}}] if score @s colossal_cooldown matches 0 run playsound item.mace.smash_ground master @a[distance=..15] ~ ~ ~ 1 1

execute as @e if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":3}}}}}] if score @s colossal_cooldown matches 0 run execute as @e run damage @s[distance=..5, type=!player] 10 player_attack
execute as @e if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":3}}}}}] if score @s colossal_cooldown matches 0 run playsound item.mace.smash_ground_heavy master @a[distance=..20] ~ ~ ~ 1 1

execute as @e if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":2}}}}}] run scoreboard players set @s colossal_cooldown 60
execute as @e if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"kiwi:colossal":3}}}}}] run scoreboard players set @s colossal_cooldown 60