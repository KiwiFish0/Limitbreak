scoreboard objectives add winded_cooldown dummy
scoreboard objectives add colossal_cooldown dummy
scoreboard objectives add velocity dummy
scoreboard objectives add sabotage_cooldown dummy
scoreboard objectives add skill_crescent_slash dummy
execute as @a at @s unless score @s skill_crescent_slash matches 0.. run scoreboard players set @s skill_crescent_slash 0
scoreboard objectives add skill_thousand_cuts dummy
scoreboard objectives add skill_thousand_cuts_cooldown dummy
execute as @a at @s unless score @s skill_thousand_cuts_cooldown matches 0.. run scoreboard players set @a skill_thousand_cuts_cooldown 0
scoreboard objectives add skill_redirect dummy
scoreboard objectives add skill_redirect_cooldown dummy
execute as @a at @s unless score @s skill_redirect matches 0.. run scoreboard players set @a skill_redirect 0
execute as @a at @s unless score @s skill_redirect_cooldown matches 0.. run scoreboard players set @a skill_redirect_cooldown 0
scoreboard objectives add skill_oversunder dummy
scoreboard objectives add skill_oversunder_cooldown dummy
execute as @a at @s unless score @s skill_oversunder matches 0.. run scoreboard players set @s skill_oversunder 0
execute as @a at @s unless score @s skill_oversunder_cooldown matches 0.. run scoreboard players set @s skill_oversunder_cooldown 0
scoreboard objectives add skill_crush dummy
execute as @a at @s unless score @s skill_crush matches 0.. run scoreboard players set @s skill_crush 0
scoreboard objectives add gravitron_lifetime dummy
scoreboard objectives add arrow_rain_random_x dummy
scoreboard objectives add arrow_rain_random_y dummy
scoreboard objectives add arrow_rain_random_z dummy
scoreboard objectives add skill_arrow_rain_cooldown dummy
execute as @a at @s unless score @s skill_arrow_rain_cooldown matches 0.. run scoreboard players set @s skill_arrow_rain_cooldown 0
scoreboard objectives add cinderstorm_rod_cooldown dummy
scoreboard objectives add cinderstorm_fire_cloak_dur dummy
execute as @a at @s unless score @s cinderstorm_rod_cooldown matches 0.. run scoreboard players set @s cinderstorm_rod_cooldown 0
scoreboard objectives add smoldering_sigil_cooldown dummy
execute as @a at @s unless score @s smoldering_sigil_cooldown matches 0.. run scoreboard players set @s smoldering_sigil_cooldown 0