execute unless entity @e[type=interaction,tag=gravebound_charm_interaction] run summon interaction ~ ~1.5 ~ {Tags:["gravebound_charm_interaction"],height:2,width:2}
tp @e[type=interaction,tag=gravebound_charm_interaction,limit=1,sort=nearest] @s
schedule function kiwi2:upgrades/classes/necromancer/summons/gravemite/gravemite_kill_interaction 2t replace
advancement revoke @s only kiwi2:necromancer_gravebound_charm_interaction