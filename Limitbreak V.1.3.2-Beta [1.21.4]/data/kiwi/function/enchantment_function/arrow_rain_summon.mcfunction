execute at @e[type=arrow,tag=arrow_rain_proc,limit=1] run summon armor_stand ~ ~-0.5 ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["arrow_rain_target"]}
execute at @e[type=arrow,tag=arrow_rain_proc,limit=1] run summon armor_stand ~ ~20 ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["arrow_rain_selector"]}
schedule function kiwi:enchantment_function/arrow_rain_kill 200t append
kill @e[type=arrow,tag=arrow_rain_proc,limit=1]