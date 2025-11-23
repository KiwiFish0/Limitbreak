scoreboard players add @s mob_first_skill_counter 1
scoreboard players add @s mob_second_skill_counter 1
scoreboard players add @s mob_third_skill_counter 1
execute unless score @s mob_second_skill_counter matches 1300..1500 run particle witch ~ ~1.5 ~ 1 1 1 1 2

execute if score @s mob_first_skill_counter matches 500 run effect clear @a[distance=..15] levitation
execute if score @s mob_first_skill_counter matches 500 run tag @a[distance=..10] add seer_shulker_gravity_slam
execute if score @s mob_first_skill_counter matches 500 if entity @a[tag=seer_shulker_gravity_slam] run particle end_rod ~ ~1.5 ~ 1 1 1 0.1 200
execute if score @s mob_first_skill_counter matches 500 as @a[tag=seer_shulker_gravity_slam] run attribute @s gravity base set -0.8
execute if score @s mob_first_skill_counter matches 503 run playsound entity.shulker.death master @a[tag=seer_shulker_gravity_slam] ~ ~ ~ 1 0.8
execute if score @s mob_first_skill_counter matches 505 as @a[tag=seer_shulker_gravity_slam] run attribute @s gravity base set 100
execute if score @s mob_first_skill_counter matches 515 as @a[tag=seer_shulker_gravity_slam] run attribute @s gravity base reset
execute if score @s mob_first_skill_counter matches 515.. as @a[tag=seer_shulker_gravity_slam] at @s unless block ~ ~-1 ~ #air run playsound item.mace.smash_ground master @a[distance=..6] ~ ~ ~ 1 2
execute if score @s mob_first_skill_counter matches 515.. at @a[tag=seer_shulker_gravity_slam] at @s unless block ~ ~-1 ~ #air run particle block_crumble{block_state:dirt} ~ ~0.5 ~ 1 0.2 1 1 50
execute if score @s mob_first_skill_counter matches 520 as @a[tag=seer_shulker_gravity_slam] run tag @s remove seer_shulker_gravity_slam
execute if score @s mob_first_skill_counter matches 1000 as @a[distance=..10] at @s run tag @s add seer_shulker_gravitated
execute if score @s mob_first_skill_counter matches 1000 as @a[distance=..10] at @s run particle witch ~ ~1 ~ 0.5 0.75 0.5 1 35
execute if score @s mob_first_skill_counter matches 1000 run effect clear @a[distance=..10] levitation
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set -0.01
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 0.02
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 1
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 0.05
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 0.01
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 0.005
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 0.09
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set 0.1
execute if score @s mob_first_skill_counter matches 1000 if predicate kiwi2:chance_random_20 as @a[distance=..10] at @s run attribute @s gravity base set -0.002
execute if score @s mob_first_skill_counter matches 1000 run schedule function kiwi2:custom_mobs_fx/seer_shulker_gravity_reset 500t
execute if score @s mob_first_skill_counter matches 1000 run scoreboard players set @s mob_first_skill_counter 0

execute if score @s mob_second_skill_counter matches 1300..1500 at @s run particle ominous_spawning ~ ~1.5 ~ 1 0 1 1 8
execute if score @s mob_second_skill_counter matches 1300..1500 at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 0.1 2
execute if score @s mob_second_skill_counter matches 1500 run function kiwi2:custom_mobs_fx/seer_shulker_gravitron_summon
execute if score @s mob_second_skill_counter matches 1500 at @r run spreadplayers ~ ~ 1 7 false @e[type=armor_stand,tag=gravitron_orb_player,limit=1,sort=nearest]
execute if score @s mob_second_skill_counter matches 1500 at @r run spreadplayers ~ ~ 1 12 false @e[type=shulker,tag=seer_shulker,limit=1,sort=nearest]
execute if score @s mob_second_skill_counter matches 1500 store result score @s mob_second_skill_counter run random value 1..400

execute if score @s mob_third_skill_counter matches 800..805 if predicate kiwi2:chance_random_50 run summon shulker ~ ~4 ~
execute if score @s mob_third_skill_counter matches 805 store result score @s mob_third_skill_counter run random value 1..150