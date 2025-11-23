summon breeze_wind_charge ~ ~ ~ {Motion:[0.0,-1.0,0.0]}
playsound entity.bat.takeoff master @a[distance=..25] ~ ~ ~ 1 2
scoreboard players set @s magus_unstable_spell 1
particle dust_color_transition{from_color:[0.369,1.000,0.212],scale:1,to_color:[0.671,0.859,0.678]} ~ ~1 ~ 0.5 0.8 0.5 0 40