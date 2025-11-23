execute unless entity @e[type=interaction,tag=withered_charm_interaction] run summon interaction ~ ~1.5 ~ {Tags:["withered_charm_interaction"],height:2,width:2}
tp @e[type=interaction,tag=withered_charm_interaction,limit=1,sort=nearest] @s
schedule function kiwi2:upgrades/classes/necromancer/summons/wither_skeleton/wither_skeleton_kill_interaction 2t replace
advancement revoke @s only kiwi2:necromancer_withered_charm_interaction