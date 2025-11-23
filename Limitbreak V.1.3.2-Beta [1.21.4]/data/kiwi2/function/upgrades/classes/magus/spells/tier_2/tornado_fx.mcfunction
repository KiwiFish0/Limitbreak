execute if entity @e[type=bat,tag=magus_tornado] run schedule function kiwi2:upgrades/classes/magus/spells/tier_2/tornado_fx 1t
execute as @e[type=bat,tag=magus_tornado,scores={magus_tornado_duration=1..}] at @s run particle sweep_attack ~ ~3 ~ 0.5 5 0.5 1 50
execute positioned as @e[type=bat,tag=magus_tornado,scores={magus_tornado_duration=1..}] as @e[type=!#items_and_non_mobs,type=!player,nbt=!{"HurtTime":10s},distance=..5] at @s run damage @s 4 magic
execute as @e[type=bat,tag=magus_tornado,scores={magus_tornado_duration=1..}] at @s run scoreboard players remove @s magus_tornado_duration 1
execute as @e[type=bat,tag=magus_tornado,scores={magus_tornado_duration=0}] at @s run kill @s