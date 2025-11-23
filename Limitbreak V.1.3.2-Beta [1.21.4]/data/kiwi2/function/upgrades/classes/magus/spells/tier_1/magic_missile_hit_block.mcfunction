particle gust ~ ~ ~ 0 0 0 1 1
playsound minecraft:entity.shulker_bullet.hit master @a[distance=..20] ~ ~ ~ 1 2
execute if entity @s[tag=unstable_spell] run summon tnt ~ ~ ~ {fuse:0,explosion_power:1}
kill @s