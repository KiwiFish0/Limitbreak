title @a subtitle {"bold":true,"color":"green","text":"Checkpoint Reached!"}
tellraw @a [{"bold":true,"color":"gold","text":"Congratulations, you have survived Day "},{"score":{"name":"world","objective":"Day"}},"."]
tellraw @a [{"color":"gold","text":"The next "},{"bold":true,"color": "white","text":"7 days"},{"color":"gold","text":" will be 'Intermission Days', where the same day repeats 7 times before continuing. To exit this loop prematurely, you can do "}, {"color": "green", "text": "/trigger IntermissionDayExit"}]
tellraw @a [{"color":"red","text":"Waves will not spawn on intermission days "}, {"color": "gold","text": "and"}, {"color":"blue","text":" no points can be gained from these 7 intermission days."}]
tellraw @a [{"color":"#FF9645","text":"Intermission Day ["},{"text": "1/7","color": "white"},{"color":"#FF9645","text":"]"}]
scoreboard players set world IntermissionDayActive 1
scoreboard players reset world IntermissionDayCount
scoreboard players enable @a IntermissionDayExit