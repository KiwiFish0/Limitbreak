execute unless entity @e[type=interaction,tag=magus_spell_change_interaction] run summon interaction ~ ~1.5 ~ {Tags:["magus_spell_change_interaction"],height:2,width:2}
tp @e[type=interaction,tag=magus_spell_change_interaction,limit=1] @s
advancement revoke @s only kiwi2:magus_summon_interaction