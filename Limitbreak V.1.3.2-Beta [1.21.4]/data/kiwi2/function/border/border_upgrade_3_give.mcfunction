advancement revoke @s only kiwi2:border_upgrade_3
execute unless score world Border matches 3.. run scoreboard players set world Border 3
tellraw @a {"text": "Border is now 150 blocks wide.", "color": "#1a8f9c","bold":true}
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1000000 1