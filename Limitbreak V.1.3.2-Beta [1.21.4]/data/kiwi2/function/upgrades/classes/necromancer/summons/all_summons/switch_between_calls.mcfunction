scoreboard players add @s[predicate=!kiwi3:player_sneak] necromancer_call_switch 1
execute if score @s[predicate=!kiwi3:player_sneak] necromancer_call_switch matches 4.. run scoreboard players set @s necromancer_call_switch 0
execute if score @s[predicate=!kiwi3:player_sneak] necromancer_call_switch matches 0 run title @s actionbar {"text":"[ SUMMON NEAREST ]","color":"#64b0c1","bold":true}
execute if score @s[predicate=!kiwi3:player_sneak] necromancer_call_switch matches 1 run title @s actionbar {"text":"[ PLAYER NEAREST ]","color":"#64b0c1","bold":true}
execute if score @s[predicate=!kiwi3:player_sneak] necromancer_call_switch matches 2 run title @s actionbar {"text":"[ RANDOM ]","color":"#64b0c1","bold":true}
execute if score @s[predicate=!kiwi3:player_sneak] necromancer_call_switch matches 3 run title @s actionbar {"text":"[ PLAYER POSITION ]","color":"#64b0c1","bold":true}
playsound minecraft:ui.button.click player @s[predicate=!kiwi3:player_sneak]

execute if entity @s[predicate=kiwi3:player_sneak] run title @s actionbar [{"bold":true,"color":"#4cd5f4","text":"ᛟ Summon Capacity"},{"color":"white","text":": ["},{"bold":true,"color":"#89D4E5","score":{"name":"@s","objective":"necromancer_summon_count"}},{"color":"white","text":"/"},{"bold":true,"color":"#89D4E5","score":{"name":"@s","objective":"necromancer_summon_capacity"}},{"color":"white","text":"]"}]

advancement revoke @s only kiwi2:necromancer_call