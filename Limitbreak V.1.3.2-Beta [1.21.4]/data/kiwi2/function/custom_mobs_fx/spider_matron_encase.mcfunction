title @a actionbar [{"color":"green","selector":"@p","bold": true},{"color":"red","text":" has been encased!"}]
playsound entity.arrow.hit_player master @a ~ ~ ~ 1 0.8
playsound entity.wither.break_block master @a[distance=..12] ~ ~ ~ 1 0.8
tp @p @s
setblock ~ ~ ~ cobweb keep
setblock ~ ~1 ~ cobweb keep
setblock ~ ~2 ~ cobweb keep
setblock ~-1 ~ ~ cobweb keep
setblock ~1 ~ ~ cobweb keep
setblock ~ ~ ~1 cobweb keep
setblock ~ ~ ~-1 cobweb keep
setblock ~-1 ~1 ~ cobweb keep
setblock ~1 ~1 ~ cobweb keep
setblock ~ ~1 ~1 cobweb keep
setblock ~ ~1 ~-1 cobweb keep

setblock ~ ~3 ~ white_wool keep 
setblock ~-2 ~ ~ white_wool keep
setblock ~2 ~ ~ white_wool keep
setblock ~ ~ ~2 white_wool keep
setblock ~ ~ ~-2 white_wool keep
setblock ~-2 ~1 ~ white_wool keep
setblock ~2 ~1 ~ white_wool keep
setblock ~ ~1 ~2 white_wool keep
setblock ~ ~1 ~-2 white_wool keep
setblock ~-1 ~ ~-1 white_wool keep
setblock ~-1 ~1 ~-1 white_wool keep
setblock ~-1 ~ ~1 white_wool keep
setblock ~-1 ~1 ~1 white_wool keep
setblock ~1 ~ ~-1 white_wool keep
setblock ~1 ~1 ~-1 white_wool keep
setblock ~1 ~ ~1 white_wool keep
setblock ~1 ~1 ~1 white_wool keep

setblock ~-1 ~2 ~ white_wool keep
setblock ~1 ~2 ~ white_wool keep
setblock ~ ~2 ~1 white_wool keep
setblock ~ ~2 ~-1 white_wool keep

setblock ~ ~-1 ~ white_wool keep
setblock ~-1 ~-1 ~ white_wool keep
setblock ~1 ~-1 ~ white_wool keep
setblock ~ ~-1 ~1 white_wool keep
setblock ~ ~-1 ~-1 white_wool keep

summon cave_spider ~-0.5 ~ ~
summon cave_spider ~ ~ ~-0.5
kill @s