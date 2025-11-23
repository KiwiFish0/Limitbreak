execute as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 10000 2 1
execute as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 10000 0.3 1
execute store result score world IntermissionDayTitle run random value 1..10
execute if score world IntermissionDayTitle matches 1 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"INTERMISSION ENDS","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 2 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE HUNT RESUMES","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 3 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE HORRORS PERSIST","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 4 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE TRIAL RENEWS","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 5 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE CYCLE TURNS","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 6 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"DEATH DEMANDS","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 7 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"PEACE SHATTERED","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 8 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE SEAL FRACTURES","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 9 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE DARKNESS STIRS","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute if score world IntermissionDayTitle matches 10 run title @a title {"text":"","extra":[{"text":"< ","bold":true,"color":"#9e0d0d"},{"text":"THE CHAIN BREAKS","bold":true,"color":"#c02020"},{"text":" >","bold":true,"color":"#9e0d0d"}]}
execute store result score world IntermissionDayTitle run random value 1..10
execute if score world IntermissionDayTitle matches 1 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< No more hiding. >"}
execute if score world IntermissionDayTitle matches 2 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< Fight or die. >"}
execute if score world IntermissionDayTitle matches 3 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< Kill or be killed. >"}
execute if score world IntermissionDayTitle matches 4 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< The debt comes due. >"}
execute if score world IntermissionDayTitle matches 5 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< Prepare for war. >"}
execute if score world IntermissionDayTitle matches 6 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< Only blood remains. >"}
execute if score world IntermissionDayTitle matches 7 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< The heavens growl. >"}
execute if score world IntermissionDayTitle matches 8 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< Ready your weapons. >"}
execute if score world IntermissionDayTitle matches 9 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< The slaughter begins. >"}
execute if score world IntermissionDayTitle matches 10 run title @a subtitle {"bold":true,"color":"#9e0d0d","text":"< Old wounds bleed. >"}
tellraw @a {"text": "Intermission period has ended.","color": "#e8be04"}
scoreboard players set world IntermissionDayCount 1
bossbar set minecraft:daytime visible true
bossbar set minecraft:daytime players @a
scoreboard players set world IntermissionDayActive 0