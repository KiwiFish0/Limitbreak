scoreboard players set @p[tag=crush_user] skill_crush 2400
execute as @e[tag=crush_target_far] run attribute @s gravity base reset
execute as @e[tag=crush_user] run attribute @s gravity base reset
execute as @e[tag=crush_target_far] run tag @s remove crush_target_far
execute as @e[tag=crush_target_close] run tag @s remove crush_target_close
execute as @e[tag=crush_source] run tag @s remove crush_source
execute as @p[tag=crush_user] run tag @s remove crush_user