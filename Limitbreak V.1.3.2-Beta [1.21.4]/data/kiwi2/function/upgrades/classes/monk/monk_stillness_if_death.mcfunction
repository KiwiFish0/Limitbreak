execute if entity @s[tag=monk_stillness_on] run tag @s add monk_was_using_stillness
tag @s[tag=monk_was_using_stillness] remove monk_stillness_on
attribute @s[tag=monk_was_using_stillness] knockback_resistance base reset
attribute @s[tag=monk_was_using_stillness] explosion_knockback_resistance base reset
tag @s[tag=!monk_was_using_stillness] add monk_stillness_on
attribute @s[tag=!monk_was_using_stillness] knockback_resistance base set 1
attribute @s[tag=!monk_was_using_stillness] explosion_knockback_resistance base set 1
tag @s remove monk_was_using_stillness