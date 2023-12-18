#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:68}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:69}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:213}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:217}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:218}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:216}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
scoreboard players set @s am_gamescore1 0
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 0
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s f3_attackid 4
scoreboard players set @s f3_attacktime 140
scoreboard players set @s f3_attackcombo 0
#kill @e[type=marker,tag=bbolt]