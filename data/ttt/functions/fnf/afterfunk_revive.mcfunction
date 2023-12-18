title @a times 2 5 2
data merge entity @e[type=armor_stand,tag=bf1,limit=1] {HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:2}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=bf2,limit=1] {HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:5}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:91}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:92}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:93}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:94}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:95}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:96}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,0f]},ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:3}}]}
data merge entity @e[type=armor_stand,tag=gfarm,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:6}}]}

data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
data merge entity @e[type=armor_stand,tag=trollgearms,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{}]}

effect clear @a blindness
bossbar set minecraft:fnfhp visible true
function ttt:fnf/scoreboard_reset
scoreboard players set @s acttimer 935