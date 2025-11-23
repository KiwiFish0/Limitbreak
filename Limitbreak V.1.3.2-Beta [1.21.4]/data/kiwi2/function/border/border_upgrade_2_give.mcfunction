advancement revoke @s only kiwi2:border_upgrade_2
execute unless score world Border matches 2.. run scoreboard players set world Border 2
tellraw @a {"text": "Border is now 100 blocks wide.", "color": "#37bdcc","bold":true}
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1000000 1