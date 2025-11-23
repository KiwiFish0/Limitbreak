execute unless entity @s[type=wolf,tag=wave_mob,nbt={Owner:[]}] run data merge entity @s {Owner:[], AngerTime:200000}
execute at @s run particle dust{color:[0,0,0],scale:1} ~ ~0.5 ~ 0.5 1 0.5 0.05 1