#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

#execute as 00000001-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ facing entity 00000004-0000-0000-0000-000000000000
data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:61}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:62}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:63}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:64}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:65}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:66}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
scoreboard players set @s am_gamescore1 0
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 10
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s f3_attackid 0
scoreboard players set @s f3_attacktime 140
scoreboard players set @s f3_attackcombo 0
schedule function ttt:finale/phase1/p100_mobattack_schedule 103t replace
execute if predicate ttt:25ch run schedule function ttt:finale/phase1/p100_mobattack_schedule 63t replace