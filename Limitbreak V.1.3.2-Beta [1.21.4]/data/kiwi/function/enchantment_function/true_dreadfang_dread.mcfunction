scoreboard objectives add dread_buildup dummy
scoreboard players add @s dread_buildup 1
particle dust{color:[0.710,0.000,0.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 0.8 30 normal
execute if score @s dread_buildup matches ..19 run playsound minecraft:entity.warden.heartbeat master @a[distance=..6] ~ ~ ~ 10 2
execute if score @s dread_buildup matches ..19 run title @p[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_data":{true_dreadfang:1b}}}}] actionbar [{"color":"#BD2D2D","italic":false,"text":"Ѫ Dread: "},{"color":"white","score":{"name":"@s","objective":"dread_buildup"}}]
execute if score @s dread_buildup matches 20.. run title @p[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_data":{true_dreadfang:1b}}}}] actionbar [{"color":"#BD2D2D","italic":false,"text":"Ѫ Dread: "},{"color":"#BD2D2D","score":{"name":"@s","objective":"dread_buildup"}}]
execute if score @s dread_buildup matches 20.. run damage @s 50 player_attack
execute if score @s dread_buildup matches 20.. run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..15] ~ ~ ~ 1 2
execute if score @s dread_buildup matches 20.. run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 1 0
execute if score @s dread_buildup matches 20.. run playsound minecraft:item.wolf_armor.crack master @a[distance=..15] ~ ~ ~ 1 1.8
execute if score @s dread_buildup matches 20.. run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..15] ~ ~ ~ 10 1
execute if score @s dread_buildup matches 20.. run particle dust{color:[0.710,0.000,0.000],scale:1} ~ ~1 ~ 1 0.5 1 0.8 120 normal
execute if score @s dread_buildup matches 20.. run particle block_crumble{block_state:redstone_block} ~ ~1 ~ 1 1 1 0.1 120 normal
execute if score @s dread_buildup matches 20.. run effect give @s slowness 5 255 true
execute if score @s dread_buildup matches 20.. run effect give @s poison 5 9 true
execute if score @s dread_buildup matches 20.. run scoreboard players reset @s dread_buildup