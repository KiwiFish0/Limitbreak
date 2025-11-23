advancement revoke @s only kiwi2:border_upgrade_1
execute unless score world Border matches 1.. run scoreboard players set world Border 1
tellraw @a {"text": "Border is now 75 blocks wide.", "color": "#28e5fa","bold":true}
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1000000 1