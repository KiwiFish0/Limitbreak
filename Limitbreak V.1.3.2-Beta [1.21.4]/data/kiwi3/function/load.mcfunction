scoreboard objectives add relics_timer dummy
scoreboard objectives add ancient_grimoire_whisper dummy
scoreboard objectives add ancient_grimoire_soul_well dummy
scoreboard objectives add ancient_grimoire_chain dummy
scoreboard objectives add incandescent_remains_dur dummy
scoreboard objectives add blossoming_millennia_sapling totalKillCount
scoreboard objectives add crystal_duration dummy
schedule function kiwi3:relics/relics_tick 20t replace
team add Player_Glow
team modify Player_Glow color green
team add Hostile_Mobs
team modify Hostile_Mobs color red
team add WaveMobs
team modify WaveMobs color gold