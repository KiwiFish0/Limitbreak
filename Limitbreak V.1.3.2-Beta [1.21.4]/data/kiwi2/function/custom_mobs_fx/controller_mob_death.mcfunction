execute if entity @s[type=item_display,tag=mind_effigy] at @s run loot spawn ~ ~ ~ loot kiwi2:entities/7to8_point
execute if entity @s[type=item_display,tag=mind_effigy] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
execute if entity @s[type=item_display,tag=mind_effigy] at @s run particle witch ~ ~ ~ 0.2 0.2 0.2 1 25 normal
execute if entity @s[type=item_display,tag=mind_effigy] at @s run playsound minecraft:entity.shulker_bullet.hit master @a[distance=..8] ~ ~ ~ 1 0.6
kill @s