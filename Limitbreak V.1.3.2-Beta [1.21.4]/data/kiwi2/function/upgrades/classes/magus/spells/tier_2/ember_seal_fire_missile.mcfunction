execute unless score world fire_missile_count matches 20.. run function kiwi2:upgrades/classes/magus/spells/tier_2/fire_missile_random_offset
scoreboard players set @e[type=item_display,sort=nearest,tag=fire_missile_init,limit=1] magus_homing_scoreboard 200
tag @e[type=item_display,sort=nearest,tag=fire_missile_init,limit=1] remove fire_missile_init

function kiwi2:upgrades/classes/magus/spells/magus_homing_spells_tick