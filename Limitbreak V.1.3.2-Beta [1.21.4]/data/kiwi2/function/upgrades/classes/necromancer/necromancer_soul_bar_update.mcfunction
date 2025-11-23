execute if score @s necromancer_current_souls matches ..0 run scoreboard players set @s necromancer_current_souls 0
scoreboard players add @s necromancer_current_souls 10
execute unless score @s necromancer_current_souls > @s necromancer_soul_bar_max run title @s actionbar {"text": "+10 ᛇ Souls","color": "#89d4e5","bold": true}
execute if score @s necromancer_current_souls > @s necromancer_soul_bar_max run title @s actionbar {"text": "Soul Bank Full!","color": "red","bold": true}
execute unless score @s necromancer_current_souls > @s necromancer_soul_bar_max run playsound block.trial_spawner.ambient_ominous master @a[distance=..4] ~ ~ ~ 1 1.5
execute if score @s necromancer_current_souls > @s necromancer_soul_bar_max run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0

particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.6 0.6 0.6 0 15 normal
particle soul ~ ~1 ~ 0.4 0.6 0.4 0 15 normal

execute if score @s necromancer_current_souls > @s necromancer_soul_bar_max run scoreboard players operation @s necromancer_current_souls = @s necromancer_soul_bar_max

execute if entity @a[scores={necromancer_count=1}] as @a[scores={necromancer_count=1}] store result bossbar soul_bar max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=2}] as @a[scores={necromancer_count=2}] store result bossbar soul_bar2 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=3}] as @a[scores={necromancer_count=3}] store result bossbar soul_bar3 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=4}] as @a[scores={necromancer_count=4}] store result bossbar soul_bar4 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=5}] as @a[scores={necromancer_count=5}] store result bossbar soul_bar5 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=6}] as @a[scores={necromancer_count=6}] store result bossbar soul_bar6 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=7}] as @a[scores={necromancer_count=7}] store result bossbar soul_bar7 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=8}] as @a[scores={necromancer_count=8}] store result bossbar soul_bar8 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=9}] as @a[scores={necromancer_count=9}] store result bossbar soul_bar9 max run scoreboard players get @s necromancer_soul_bar_max
execute if entity @a[scores={necromancer_count=10}] as @a[scores={necromancer_count=10}] store result bossbar soul_bar10 max run scoreboard players get @s necromancer_soul_bar_max

execute if entity @a[scores={necromancer_count=1}] as @a[scores={necromancer_count=1}] store result bossbar soul_bar value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=2}] as @a[scores={necromancer_count=2}] store result bossbar soul_bar2 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=3}] as @a[scores={necromancer_count=3}] store result bossbar soul_bar3 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=4}] as @a[scores={necromancer_count=4}] store result bossbar soul_bar4 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=5}] as @a[scores={necromancer_count=5}] store result bossbar soul_bar5 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=6}] as @a[scores={necromancer_count=6}] store result bossbar soul_bar6 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=7}] as @a[scores={necromancer_count=7}] store result bossbar soul_bar7 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=8}] as @a[scores={necromancer_count=8}] store result bossbar soul_bar8 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=9}] as @a[scores={necromancer_count=9}] store result bossbar soul_bar9 value run scoreboard players get @s necromancer_current_souls
execute if entity @a[scores={necromancer_count=10}] as @a[scores={necromancer_count=10}] store result bossbar soul_bar10 value run scoreboard players get @s necromancer_current_souls

scoreboard players reset @s necromancer_soul_reap