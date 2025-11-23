title @a actionbar [{"selector":"@a[tag=cinderstorm_link]","color": "green","bold": true},{"text":"'s soul has been linked to the storm.","color":"red","italic":false}]
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 10 2
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 10 1
tag @a[tag=cinderstorm_link] add cinderstorm_link_activated
tag @a[tag=cinderstorm_link] remove cinderstorm_link