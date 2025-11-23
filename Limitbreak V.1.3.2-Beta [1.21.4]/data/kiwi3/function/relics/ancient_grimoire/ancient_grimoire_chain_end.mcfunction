playsound minecraft:block.chain.break master @a[distance=..20] ~ ~ ~ 1 0.1 1
playsound minecraft:entity.iron_golem.damage master @a[distance=..20] ~ ~ ~ 1 1.3
particle soul ~ ~1 ~ 0.3 0.3 0.3 0.1 50
function kiwi3:relics/ancient_grimoire/ancient_grimoire_chain_macro with storage kiwi:ancient_grimoire_chain_attributes
scoreboard players reset @s ancient_grimoire_chain
tag @s remove ancient_grimoire_chain