execute at @e[tag=gravitron_death] run summon tnt ~ ~2 ~
execute at @e[tag=gravitron_death] run particle reverse_portal ~ ~2 ~ 0 0 0 4 300
execute at @e[tag=gravitron_death] run kill @e[tag=gravitron_death]