tag @r[tag=!forsaken_switch_2] add forsaken_switch_1
tag @r[tag=!forsaken_switch_1] add forsaken_switch_2
execute at @a[tag=forsaken_switch_1] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["forsaken_switch_armor_stand_1"]}
execute at @a[tag=forsaken_switch_2] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["forsaken_switch_armor_stand_2"]}
execute as @e[tag=forsaken_switch_armor_stand_1] run tp @a[tag=forsaken_switch_2] @s
execute as @e[tag=forsaken_switch_armor_stand_2] run tp @a[tag=forsaken_switch_1] @s
playsound minecraft:entity.illusioner.prepare_mirror master @a[tag=forsaken_switch_1] ~ ~ ~ 1 2
playsound minecraft:entity.illusioner.prepare_mirror master @a[tag=forsaken_switch_2] ~ ~ ~ 1 2
tag @a remove forsaken_switch_1
tag @a remove forsaken_switch_2
kill @e[tag=forsaken_switch_armor_stand_1]
kill @e[tag=forsaken_switch_armor_stand_2]