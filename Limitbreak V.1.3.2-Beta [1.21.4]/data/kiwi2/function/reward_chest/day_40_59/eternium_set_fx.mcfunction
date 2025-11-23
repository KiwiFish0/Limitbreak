particle dust_color_transition{from_color:[1.000,1.000,0.000],scale:1,to_color:[1.000,0.608,0.161]} ~ ~1 ~ 0.5 0.5 0.5 0.05 1
execute if score @s[tag=!eternium_set_second_wind_activated] EntityHealth matches ..20 run function kiwi2:reward_chest/day_40_59/eternium_set_second_wind
execute if score @s eternium_set_second_wind_cd matches 1.. run scoreboard players remove @s eternium_set_second_wind_cd 1
execute if score @s eternium_set_second_wind_cd matches 0 run tag @s remove eternium_set_second_wind_activated