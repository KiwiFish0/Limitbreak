tag @s remove sovereign_frozen
effect clear @s slowness
effect clear @s mining_fatigue
attribute @s jump_strength base reset
particle block_crumble{block_state:blue_ice} ~ ~1 ~ 0.2 0.5 0.2 0 100
playsound minecraft:block.glass.break master @a[distance=..12] ~ ~ ~ 1 0