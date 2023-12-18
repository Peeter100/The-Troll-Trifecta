scoreboard players set @s fnf_beat 0
scoreboard players set @s fnf_beatoff 0

scoreboard players set @s fnf_ad_p -1
scoreboard players set @s fnf_dir_p 5

data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:13}}]}
data merge entity @e[type=armor_stand,tag=trollgearms,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:16}}]}
particle large_smoke -5 30 132 .5 1 .5 .01 100 force @a

data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:91}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:92}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:93}}],Pose:{Head:[-20f,-45f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:94}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:95}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:96}}],Pose:{Head:[0f,0f,0f]}}

item replace entity @e[type=armor_stand,tag=gfmain,limit=1] armor.head with redstone{CustomModelData:9}