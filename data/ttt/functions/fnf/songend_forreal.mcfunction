data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:31}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:32}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:33}}]}
data merge entity @e[type=armor_stand,tag=trollgearms,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:34}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:35}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:36}}]}

particle explosion_emitter -3 29 135.0 2 .5 2 0 2 force @a
particle explosion -3 29 135.0 2 .5 2 0 200 force @a
playsound entity.generic.explode master @a -3 29 135.0 1000
playsound entity.generic.explode master @a -3 29 135.0 1000
playsound block.stone.break master @a -3 29 135.0 1000
playsound block.stone.break master @a -3 29 135.0 1000
playsound block.netherrack.break master @a -3 29 135.0 1000
playsound block.nether_bricks.break master @a -3 29 135.0 1000

tag @s add silentdeath
execute at @p[tag=fnfplayer] run playsound custom.act1.mario.die2 master @a ~ ~ ~ 1000
scoreboard players set @p[tag=fnfplayer] deathreason 14
execute as @p[tag=fnfplayer] at @s run function ttt:death
scoreboard players set @s actpart 3