execute if score world ongoing_run matches 1 run title @s times 1s 10s 2s
execute if score world ongoing_run matches 1 run title @s title [{"bold":true,"color":"dark_red","obfuscated":true,"text":"XXX"},{"bold":true,"color":"red","obfuscated":false,"text":" YOU DIED "},{"bold":true,"color":"dark_red","italic":false,"obfuscated":true,"text":"XXX"}]
execute if score world ongoing_run matches 1 run title @s actionbar {"bold":true,"color":"red","text":"Come back stronger next time!"}
execute if score world ongoing_run matches 1 run title @s subtitle {"bold":true,"color":"dark_red","text":"You will respawn once the day has ended."}
scoreboard players set @s player_deaths 0
execute if score world ongoing_run matches 1 run execute at @s run summon lightning_bolt ~ ~ ~
execute if score world ongoing_run matches 1 run execute at @s run tellraw @a [{"bold":true,"clickEvent":{"action":"run_command","value":"/say F"},"color":"white","italic":false,"selector":"@s"},{"bold":true,"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"","color":"red"}]},"italic":false,"text":" has died..."}]
execute if score world ongoing_run matches 1 run execute at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 10000 0.75
execute if score world ongoing_run matches 1 run gamemode spectator @s
execute if score world ongoing_run matches 1 run tag @s add limitbreak_dead_player
execute if score world ongoing_run matches 1 as @s[tag=monk_stillness_on] at @s run function kiwi2:upgrades/classes/monk/monk_stillness_if_death

# If everyone dies, rollback to last checkpoints
# execute if score world ongoing_run matches 1 run execute unless entity @a[gamemode=survival] run function kiwi2:rollback
execute if score world ongoing_run matches 1 run execute unless entity @a[gamemode=survival] run function kiwi2:lose_run