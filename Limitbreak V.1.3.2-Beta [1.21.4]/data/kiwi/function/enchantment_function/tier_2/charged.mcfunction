particle electric_spark ~ ~1 ~ 1 1 1 0.5 25
particle gust ~ ~1 ~ 0 0 0 1 1
particle block_crumble{block_state:"minecraft:stone"} ~ ~1 ~ 1 1 1 1 50 normal
particle block_crumble{block_state:"minecraft:dirt"} ~ ~1 ~ 1 1 1 1 50 normal
particle flash ~ ~ ~ 0 0 0 1 1
playsound entity.wither.break_block master @a[distance=..25] ~ ~ ~ 1 0.1
damage @s 15 arrow by @p
effect give @s wither 5 2 true
effect give @s slowness 3 255 true
summon tnt ~ ~ ~ {explosion_power:2}
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 1 0.1