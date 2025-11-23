execute unless entity @e[type=interaction,tag=hollow_husk_interaction] run summon interaction ~ ~1.5 ~ {Tags:["hollow_husk_interaction"],height:2,width:2}
tp @e[type=interaction,tag=hollow_husk_interaction,limit=1,sort=nearest] @s
schedule function kiwi2:upgrades/classes/necromancer/summons/hollow_husk/hollow_husk_kill_interaction 2t replace
advancement revoke @s only kiwi2:necromancer_hollow_skull_interaction