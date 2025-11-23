execute unless entity @e[type=interaction,tag=flicker_strike_interaction] run summon interaction ~ ~1.5 ~ {Tags:["flicker_strike_interaction"],height:2,width:2}
tp @e[type=interaction,tag=flicker_strike_interaction,limit=1,sort=nearest] @s
schedule function kiwi2:upgrades/classes/slayer/flicker_strike/flicker_strike_kill_interaction 5t replace
advancement revoke @s only kiwi2:slayer_flicker_strike_interaction