execute if score world Day matches 0 run scoreboard players set @a stats_divide_by_10 10
execute if score world Day matches 0 run scoreboard players set @a credit_conversion_rate 20
execute unless score credit_bonus world_upgrades matches 1.. if score world Day matches 0 run scoreboard players set @a run_complete_credit_bonus 25
scoreboard players enable @a StatCheck
scoreboard players enable @a ClassInfo
gamerule maxEntityCramming 30
gamerule keepInventory true
gamerule doInsomnia false
gamerule disableRaids true
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamerule spectatorsGenerateChunks false
bossbar add wave_1 [{"bold":true,"color":"dark_red","obfuscated":true,"text":"XXX"},{"color":"#FFBF0F","italic":false,"obfuscated":false,"text":" W"},{"color":"#FFD106","italic":false,"obfuscated":false,"text":"A"},{"color":"#FFDE06","italic":false,"obfuscated":false,"text":"V"},{"color":"#FFE016","italic":false,"obfuscated":false,"text":"E "},{"bold":true,"color":"#D6BE1E","italic":false,"obfuscated":false,"text":"1 "},{"bold":true,"color":"dark_red","italic":false,"obfuscated":true,"text":"XXX"}]
bossbar add wave_2 [{"bold":true,"color":"dark_red","obfuscated":true,"text":"XXX"},{"color":"#FFBF0F","italic":false,"obfuscated":false,"text":" W"},{"color":"#FFD106","italic":false,"obfuscated":false,"text":"A"},{"color":"#FFDE06","italic":false,"obfuscated":false,"text":"V"},{"color":"#FFE016","italic":false,"obfuscated":false,"text":"E "},{"bold":true,"color":"#D6BE1E","italic":false,"obfuscated":false,"text":"2 "},{"bold":true,"color":"dark_red","italic":false,"obfuscated":true,"text":"XXX"}]
bossbar add wave_3 [{"bold":true,"color":"dark_red","obfuscated":true,"text":"XXX"},{"color":"#FFBF0F","italic":false,"obfuscated":false,"text":" W"},{"color":"#FFD106","italic":false,"obfuscated":false,"text":"A"},{"color":"#FFDE06","italic":false,"obfuscated":false,"text":"V"},{"color":"#FFE016","italic":false,"obfuscated":false,"text":"E "},{"bold":true,"color":"#D6BE1E","italic":false,"obfuscated":false,"text":"3 "},{"bold":true,"color":"dark_red","italic":false,"obfuscated":true,"text":"XXX"}]
bossbar add daytime {"bold":true,"text":"Next Wave"}
bossbar set wave_1 max 1999
bossbar set wave_2 max 1999
bossbar set wave_3 max 1999
bossbar set daytime max 17999
execute in minecraft:overworld run fill 0 62 0 0 62 0 bedrock
tellraw @a [{"bold":true,"color":"dark_red","text":"[LIMITBREAK]"},{"bold":false,"color":"white","text":" Thank you for downloading this datapack. Please check the guidebooks around the hub for more information or visit the modrinth website. "},{"bold":false,"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/limitbreak"},"color":"blue","text":"https://modrinth.com/datapack/limitbreak"}]