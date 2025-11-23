execute if score @s skill_redirect_cooldown matches 0 unless score @s skill_redirect matches 1..100 run scoreboard objectives add player_block_damage_check minecraft.custom:damage_blocked_by_shield
scoreboard objectives setdisplay sidebar player_block_damage_check
execute if score @s skill_redirect_cooldown matches 0 unless entity @s[tag=redirect_player] unless score @s skill_redirect matches 1..100 run scoreboard players add @s skill_redirect 100
execute if score @s skill_redirect_cooldown matches 0 unless entity @s[tag=redirect_player] run tag @s add redirect_player
execute if score @s skill_redirect_cooldown matches 0 at @a[tag=redirect_player,limit=1] if score @s skill_redirect matches 0 run tag @s remove redirect_player
execute if score @s skill_redirect_cooldown matches 0 unless score @s skill_redirect matches 1..99 at @s run playsound minecraft:block.beacon.power_select master @a[distance=..10] ~ ~ ~ 1 0.1
execute if score @s skill_redirect_cooldown matches 0 unless score @s skill_redirect matches 1..99 at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 1 0.1
execute if score @s skill_redirect_cooldown matches 0 unless score @s skill_redirect matches 1..99 at @s run playsound minecraft:block.bell.resonate master @a[distance=..10] ~ ~ ~ 1 0.1