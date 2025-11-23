execute unless entity @e[type=interaction,tag=flesh_charm_interaction] run summon interaction ~ ~1.5 ~ {Tags:["flesh_charm_interaction"],height:2,width:2}
tp @e[type=interaction,tag=flesh_charm_interaction,limit=1,sort=nearest] @s
schedule function kiwi2:upgrades/classes/necromancer/summons/zombie/zombie_kill_interaction 2t replace
advancement revoke @s only kiwi2:necromancer_flesh_charm_interaction