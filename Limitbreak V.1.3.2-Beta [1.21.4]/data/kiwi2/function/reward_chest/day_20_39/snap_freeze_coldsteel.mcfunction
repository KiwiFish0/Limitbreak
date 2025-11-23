data merge entity @s {TicksFrozen:500}
effect give @s slowness 3 10 true
execute at @s run particle snowflake ~ ~1 ~ 1 1 1 0 75
execute at @s run particle block_crumble{block_state:blue_ice} ~ ~1 ~ 1 1 1 0 75
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0.1