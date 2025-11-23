tellraw @a[distance=..25] [{"color":"white","text":"<"},{"color":"green","selector":"@s"},{"color":"white","text":">"},{"bold":true,"color":"gray","text":" Ȿibilus!"}]
execute as @e[tag=!boss_check,distance=..15,sort=nearest,limit=6] unless entity @s[type=!#enemy_mobs_only,tag=!wave_mob] run effect give @s levitation 5 0 true
execute as @e[tag=!boss_check,distance=..15,sort=nearest,limit=6] unless entity @s[type=!#enemy_mobs_only,tag=!wave_mob] run tag @s add ancient_grimoire_whisper
scoreboard players set @e[tag=ancient_grimoire_whisper] ancient_grimoire_whisper 100
particle soul ~ ~-0.1 ~ 1 0 1 0 200
playsound minecraft:entity.player.attack.knockback master @a[distance=..5] ~ ~ ~ 1 .1
playsound minecraft:entity.elder_guardian.curse master @a[distance=..5] ~ ~ ~ 1 2
execute as @e[tag=ancient_grimoire_whisper] as @s at @s run function kiwi3:relics/ancient_grimoire/ancient_grimoire_whisper_damage