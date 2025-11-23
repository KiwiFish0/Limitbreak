scoreboard players add world teleport_countdown 1
schedule function kiwi2:teleport_start_mechanism_reset 20t replace
execute as @a at @s run particle soul_fire_flame ~ ~1 ~ 0.2 0.5 0.2 0.05 1
execute if score world teleport_countdown matches 1 as @a at @s run playsound entity.breeze.inhale master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 30 as @a at @s run playsound block.beacon.activate master @a ~ ~ ~ 10 2
execute if score world teleport_countdown matches 50..200 run title @a actionbar {"text": "RUN INCOMING","color": "#e63131","bold": true}
execute if score world teleport_countdown matches 50 run title @a title {"text": " // READY //","color": "#5be246","bold": true}
execute if score world teleport_countdown matches 50 as @a at @s run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 10 2
execute if score world teleport_countdown matches 50 run title @a subtitle {"text": "T-5","color": "#cf3628","bold": true}
execute if score world teleport_countdown matches 50 as @a at @s run playsound ui.button.click master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 70 run title @a subtitle {"text": "T-4","color": "#cf3628","bold": true}
execute if score world teleport_countdown matches 70 as @a at @s run playsound ui.button.click master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 90 run title @a subtitle {"text": "T-3","color": "#cf3628","bold": true}
execute if score world teleport_countdown matches 90 as @a at @s run playsound ui.button.click master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 110 run title @a subtitle {"text": "T-2","color": "#cf3628","bold": true}
execute if score world teleport_countdown matches 110 as @a at @s run playsound ui.button.click master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 130 run title @a subtitle {"text": "T-1","color": "#cf3628","bold": true}
execute if score world teleport_countdown matches 130 as @a at @s run playsound ui.button.click master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 150 run title @a subtitle {"text": "[ GOOD LUCK ]","color": "#cf3628","bold": true}
execute if score world teleport_countdown matches 160 as @a at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 10 0
execute if score world teleport_countdown matches 200 as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 10 2
execute if score world teleport_countdown matches 210 run schedule clear kiwi2:teleport_start_mechanism_reset
execute if score world teleport_countdown matches 210 run schedule function kiwi2:upgrades/classes/class_give_branch 40t
execute if score world teleport_countdown matches 210 run execute in minecraft:overworld run function kiwi2:coordinate_spreadplayers_macro with storage kiwi:teleport_storage pos