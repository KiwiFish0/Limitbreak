function kiwi2:custom_mobs_fx/phantom_sovereign_screech
data merge entity @s {Invulnerable:0b}
effect clear @s
tp @s ~ ~-25 ~ facing ^-90 ^-10 ^
tag @s add phantom_sovereign_phase_3
scoreboard players set @s mob_fourth_skill_counter 1100