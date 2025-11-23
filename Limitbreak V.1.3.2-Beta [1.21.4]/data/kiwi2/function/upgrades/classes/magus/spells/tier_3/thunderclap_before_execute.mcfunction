execute at @e[tag=magus_lightning_target] run particle electric_spark ~ ~0.1 ~ 0.8 0.2 0.8 0 100
execute at @e[tag=magus_lightning_target] run particle flash ~ ~1 ~ 0 0 0 0 1
execute at @e[tag=magus_lightning_target] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1 force
execute at @e[tag=magus_lightning_target] run playsound minecraft:entity.arrow.hit_player master @a[distance=..15] ~ ~ ~ 1 0 1
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run particle electric_spark ~ ~0.1 ~ 0.8 0.2 0.8 0 100
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run particle flash ~ ~1 ~ 0 0 0 0 1
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run particle block_marker{block_state:"barrier"} ~ ~1.5 ~ 0 0 0 1 1 force
execute at @e[tag=magus_lightning_bolt_no_mobs_nearby] run playsound minecraft:entity.arrow.hit_player master @a[distance=..15] ~ ~ ~ 1 0 1