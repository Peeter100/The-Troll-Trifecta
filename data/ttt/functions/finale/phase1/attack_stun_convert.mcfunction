#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

tp 00000001-0000-0000-0000-000000000000 ~ ~ ~ ~ ~
data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:51}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:52}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:53}}]}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:55}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:56}}]}
scoreboard players set @s am_gamescore1 0
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 0
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s f3_attackid -1
scoreboard players add @s f3_stunmeter 2
scoreboard players set @s f3_attacktime 15
execute if score @s f3_stunmeter matches 13.. run scoreboard players set @s f3_attacktime 8
scoreboard players set @s f3_attackcombo 0