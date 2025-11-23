execute at @n[type=shulker_bullet,limit=1,tag=flower_hat_spore] run particle explosion ~ ~ ~ 0 0 0 0 1
kill @n[type=shulker_bullet,limit=1,tag=flower_hat_spore]
damage @s 2 kiwi:flower_hat_spore_damage
playsound minecraft:entity.shulker_bullet.hit master @a[distance=..5] ~ ~ ~ 1 2