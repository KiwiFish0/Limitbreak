advancement revoke @s only kiwi2:border_upgrade_4
execute unless score world Border matches 4.. run scoreboard players set world Border 4
tellraw @a {"text": "Border is now 200 blocks wide.", "color": "#b11dbe","bold":true}
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1000000 1