execute unless entity @e[type=interaction,tag=necromancer_call_interaction] run summon interaction ~ ~1.5 ~ {Tags:["necromancer_call_interaction"],height:2,width:2}
tp @e[type=interaction,tag=necromancer_call_interaction,limit=1] @s
schedule function kiwi2:upgrades/classes/necromancer/summons/all_summons/kill_call_interaction 2t replace
advancement revoke @s only kiwi2:necromancer_summon_interaction