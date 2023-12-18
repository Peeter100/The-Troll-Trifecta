#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000
#alias entity p100 00000004-0000-0000-0000-000000000000

data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:211}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:212}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:213}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:214}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:215}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:216}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:105}}],Pose:{Head:[0F,0F,0F]},ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}]}
scoreboard players set @s am_gamescore1 10
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 0
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s f3_attackid 2
scoreboard players set @s f3_attacktime 100
scoreboard players set @s f3_attackcombo 0