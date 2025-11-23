particle block_crumble{block_state:"minecraft:redstone_block"} ~ ~0.8 ~ 0.25 0.5 0.25 1 50
playsound minecraft:item.wolf_armor.crack master @a[distance=..5] ~ ~ ~ 1 1.8
execute if predicate kiwi2:chance_random_50 run effect give @s slowness 1 2 false