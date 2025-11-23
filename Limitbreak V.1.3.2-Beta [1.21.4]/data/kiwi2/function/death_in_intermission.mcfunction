scoreboard players set @a player_deaths 0
execute if entity @s[tag=monk_stillness_on] run function kiwi2:upgrades/classes/monk/monk_stillness_if_death
schedule function kiwi2:points/point_milestones_regive_after_death 5s
schedule function kiwi2:upgrades/classes/class_modifiers_regive 10s