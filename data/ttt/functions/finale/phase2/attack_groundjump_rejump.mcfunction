execute at @r[tag=bossplayer] run summon marker ~ 15 ~ {Tags:["forkill","trollgeleaptrgt"],PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}

execute as 00000001-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=trollgeleaptrgt,limit=1] feet
scoreboard players set @s am_gamescore2 3
execute at 00000001-0000-0000-0000-000000000000 if entity @e[type=marker,tag=trollgeleaptrgt,distance=..30] run scoreboard players set @s am_gamescore2 2
execute at 00000001-0000-0000-0000-000000000000 if entity @e[type=marker,tag=trollgeleaptrgt,distance=..22] run scoreboard players set @s am_gamescore2 1
#execute at 00000001-0000-0000-0000-000000000000 if entity @e[type=marker,tag=trollgeleaptrgt,distance=..15] run scoreboard players set @s am_gamescore2 0

data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:41}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:42}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:43}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:44}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:45}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:46}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}