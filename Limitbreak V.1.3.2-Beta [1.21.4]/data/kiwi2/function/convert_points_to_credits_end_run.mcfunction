execute as @a at @s run scoreboard players operation @s Credits = @s Points
execute as @a at @s run scoreboard players operation @s Credits /= @s credit_conversion_rate
execute as @a at @s run tellraw @s [{"text": "Points: ","color": "#e3750f"},{"score": {"objective": "Points","name": "@s"},"color": "white"},{"text": " ---> ","color": "white"},{"score": {"objective": "Credits","name": "@s"},"color": "white"},{"text": " ⌬ Credits","color": "#76BDF8"}]
execute as @a at @s run scoreboard players set @s Points 0
execute as @a at @s run scoreboard players operation @s Credits += @s credit_save_bank
execute as @a at @s run tellraw @s [{"text": "⌬ Credits ","color": "#76BDF8"},{"text":"+ ","color": "white"},{"text": "⌬ Credit Bank ","color": "#1a81d4"},{"text":"= ","color": "white"},{"score": {"objective": "Credits","name": "@s"}},{"text": " ⌬ Credits","color": "#76BDF8"}]
scoreboard objectives setdisplay list Credits