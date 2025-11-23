playsound entity.shulker_bullet.hit master @a[distance=..5] ~ ~ ~ 1 2
summon shulker_bullet ^ ^2 ^1 {Tags:["flower_hat_spore","new_spore"],NoGravity:1b}
summon shulker_bullet ^1 ^2 ^-1 {Tags:["flower_hat_spore","new_spore"],NoGravity:1b}
summon shulker_bullet ^-1 ^2 ^-1 {Tags:["flower_hat_spore","new_spore"],NoGravity:1b}
spreadplayers ~ ~ 0.2 5 false @e[type=shulker_bullet,tag=flower_hat_spore,tag=new_spore]
execute as @e[type=shulker_bullet,tag=flower_hat_spore,tag=new_spore] at @s run tp @s ~ ~1 ~
tag @e[type=shulker_bullet,tag=flower_hat_spore] remove new_spore