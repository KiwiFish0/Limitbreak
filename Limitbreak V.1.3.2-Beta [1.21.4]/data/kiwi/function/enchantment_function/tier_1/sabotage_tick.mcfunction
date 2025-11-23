execute if score @s sabotage_cooldown matches 1..20 run scoreboard players remove @s sabotage_cooldown 1
# execute if score @s sabotage_cooldown matches 10 run data merge entity @e[tag=sabotage_target,limit=1,sort=nearest] {Motion:[0.0, 2.0, 0.0]}
# execute if score @s sabotage_cooldown matches 1 run data merge entity @e[tag=sabotage_target,limit=1,sort=nearest] {Motion:[0.0, 2.0, 0.0]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~ ~1 ~1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~ ~2 ~ {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~1 ~1 ~ {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~1 ~1 ~1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~1 ~2 ~ {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~ ~2 ~1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~1 ~2 ~1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~ ~1 ~-1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~ ~2 ~ {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~-1 ~1 ~ {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~-1 ~1 ~-1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~-1 ~2 ~ {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~ ~2 ~-1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~-1 ~2 ~-1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~-1 ~2 ~1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~1 ~2 ~-1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~-1 ~1 ~1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 2 at @s run summon arrow ~1 ~1 ~-1 {life:1160, Tags:["spawned_arrow"]}
execute if score @s sabotage_cooldown matches 1 at @s run summon tnt ~ ~1 ~ {explosion_power:2}
# execute if score @s sabotage_cooldown matches 1 run tag @s remove sabotage_target