execute as @a[tag=magus_blink_done] at @s unless block ~ ~ ~ #magus_blink_phase run tp @s ~ ~1 ~
execute as @a[tag=magus_blink_done] at @s unless block ~ ~1 ~ #magus_blink_phase run tp @s ~ ~2 ~
execute as @a[tag=magus_blink_done] at @s run attribute @s gravity base set 0