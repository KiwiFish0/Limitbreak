title @p[scores={limitbreak_chosen_class=3},limit=1,sort=nearest] actionbar {"text": "Power Shot Failed!", "color": "red", "bold": true}
execute as @p[scores={limitbreak_chosen_class=3},limit=1,sort=nearest] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 0
kill @s