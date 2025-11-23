particle flame ~ ~0.7 ~ 0.25 0.5 0.25 0.01 1
effect give @s fire_resistance 1 255 true
execute at @s if predicate kiwi2:is_on_fire run particle soul_fire_flame ~ ~1 ~ 0.25 0.5 0.25 0.08 1
execute at @s if predicate kiwi2:is_on_fire run effect give @s strength 1 0 true
execute at @s if predicate kiwi2:is_on_fire run effect give @s speed 1 0 true