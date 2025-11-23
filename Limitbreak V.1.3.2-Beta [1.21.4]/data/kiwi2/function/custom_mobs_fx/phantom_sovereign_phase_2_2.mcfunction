title @a actionbar {"text": "The Sovereign whispers to the night...","color": "#4F3BD1"}
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1000 0

summon warden ~ ~ ~ {Tags:["phantom_sovereign_phase_2.2"],active_effects:[{id:"glowing",amplifier:1,duration:999999}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
summon warden ~ ~ ~ {Tags:["phantom_sovereign_phase_2.2"],active_effects:[{id:"glowing",amplifier:1,duration:999999}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
spreadplayers ~ ~ 0 10 false @e[tag=phantom_sovereign_phase_2.2]
tag @s add phantom_sovereign_phase_2.1_complete