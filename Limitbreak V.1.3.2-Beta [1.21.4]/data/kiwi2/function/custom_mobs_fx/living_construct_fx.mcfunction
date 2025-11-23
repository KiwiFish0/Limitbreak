scoreboard players add @s mob_first_skill_counter 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ender_dragon.hurt master @a[distance=..10] ~ ~ ~ 1 2 1
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:item.mace.smash_air master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if score @s mob_first_skill_counter matches 1 run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={id:[I;1844848392,-1067954568,-1511672272,-172569030],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzVlMjFhZTg2OTg1OGIyNjhhZjEzYzdiNTI1ZWNlNzJkNWFhNjFjMWMzOWE1YzdiMjUxM2NiZmI1YjNmZDRkMCJ9fX0="}]}] 1
execute if score @s mob_first_skill_counter matches 1 run data merge entity @s {attributes:[{id:"attack_damage",base:30},{id:"movement_speed",base:0.5},{id:"follow_range:100"}]}
execute if score @s mob_first_skill_counter matches 1 run data merge entity @s {Invulnerable:0b}
execute if score @s mob_first_skill_counter matches 300 run data merge entity @s {attributes:[{id:"attack_damage",base:0},{id:"movement_speed",base:0},{id:"follow_range:0"}]}
execute if score @s mob_first_skill_counter matches 300 run effect give @s weakness 10 255 true
execute if score @s mob_first_skill_counter matches 300 run data merge entity @s {Invulnerable:1b}
execute if score @s mob_first_skill_counter matches 300 at @e[tag=!wave_mob,distance=..3] as @e[tag=!wave_mob,distance=..3] run damage @s 10 kiwi2:living_construct_clamp
execute if score @s mob_first_skill_counter matches 300 run playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s mob_first_skill_counter matches 300 run playsound minecraft:block.lava.extinguish master @a[distance=..10] ~ ~ ~ 1 0.5
execute if score @s mob_first_skill_counter matches 300 run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.2 25
execute if score @s mob_first_skill_counter matches 300 run particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0.05 25
execute if score @s mob_first_skill_counter matches 300 run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={id:[I;1844848392,-1067954568,-1511672272,-172569030],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYzY2Q2OTljMmZlM2MwZmY4YTYzNjBlNjc0YTY5OGQ2NjIyYzUxYTcyYzgzNGViNThlYTU1ZTlkN2E0ZTQyOCJ9fX0="}]}] 1
execute if score @s mob_first_skill_counter matches 450 run particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 25
execute if score @s mob_first_skill_counter matches 450 run playsound minecraft:entity.zombie_villager.cure master @a[distance=..10] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 450 run playsound minecraft:entity.minecart.riding master @a[distance=..10] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 450 run scoreboard players reset @s mob_first_skill_counter