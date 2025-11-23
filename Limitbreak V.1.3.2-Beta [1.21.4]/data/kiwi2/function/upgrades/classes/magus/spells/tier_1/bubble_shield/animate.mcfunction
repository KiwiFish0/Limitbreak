#CREDIT: Particles Generated with: Cloud Wolf's Particle Grapher
execute if entity @a[tag=magus_bubble_shielded] run schedule function kiwi2:upgrades/classes/magus/spells/tier_1/bubble_shield/animate 1t replace
scoreboard objectives add cw_particleplot dummy
function kiwi2:upgrades/classes/magus/spells/tier_1/bubble_shield/l0/l0_0
execute as @a[tag=magus_bubble_shielded_unstable] at @s run damage @s 0.5 drown
scoreboard players add @a[tag=magus_bubble_shielded] cw_particleplot 1
scoreboard players remove @a[tag=magus_bubble_shielded] magus_bubble_shield_timer 1
execute as @a[tag=magus_bubble_shielded] at @s run effect give @a[distance=..1.5] resistance 2 0 true
execute as @a[tag=magus_bubble_shielded] at @s if score @s cw_particleplot matches 3.. run scoreboard players set @s cw_particleplot 0
execute as @a[tag=magus_bubble_shielded] at @s if score @s magus_bubble_shield_timer matches 0 run function kiwi2:upgrades/classes/magus/spells/tier_1/bubble_shield/delete_bubble_shield