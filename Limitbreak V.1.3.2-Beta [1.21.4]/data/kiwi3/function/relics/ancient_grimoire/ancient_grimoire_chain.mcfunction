tellraw @a[distance=..25] [{"color":"white","text":"<"},{"color":"green","selector":"@s"},{"color":"white","text":">"},{"bold":true,"color":"#A32424","text":" Ȿigⱨilum."}]
playsound minecraft:block.chain.place master @a[distance=..25] ~ ~ ~ 1 1 1
playsound minecraft:block.chain.place master @a[distance=..25] ~ ~ ~ 1 2 1
playsound minecraft:block.chain.place master @a[distance=..25] ~ ~ ~ 1 0.1 1
playsound minecraft:entity.vex.charge master @a[distance=..25] ~ ~ ~ 1 0.1 1
playsound minecraft:entity.iron_golem.repair master @a[distance=..15] ~ ~ ~ 1 2
execute as @e[tag=!boss_check,tag=!player_soul_well,tag=!forsaken_lich_soul_well,tag=!ancient_grimoire_chain,distance=..5] unless entity @s[type=!#enemy_mobs_only,tag=!wave_mob] at @s run tag @s add ancient_grimoire_chain
execute unless entity @e[distance=..5,limit=1,type=#enemy_mobs_only] run tellraw @s {"text": "No suitable entities nearby.","color": "red"}
scoreboard players set @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] ancient_grimoire_chain 500
execute at @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] run particle soul ~ ~ ~ 0.5 0 0.5 0.2 100
execute at @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] run particle soul_fire_flame ~ ~1 ~ 0.1 0.7 0.1 0.2 100
execute as @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] store result storage kiwi:ancient_grimoire_chain_attributes x double 0.1 run attribute @s jump_strength get 10
execute as @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] store result storage kiwi:ancient_grimoire_chain_attributes z double 0.1 run attribute @s knockback_resistance get 10
execute as @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] store result storage kiwi:ancient_grimoire_chain_attributes a double 0.01 run attribute @s explosion_knockback_resistance get 100
execute as @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] run attribute @s jump_strength base set 0
execute as @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] run attribute @s knockback_resistance base set 1
execute as @e[tag=ancient_grimoire_chain,limit=1,sort=nearest] run attribute @s explosion_knockback_resistance base set 1
function kiwi3:relics/ancient_grimoire/ancient_grimoire_chain_fx