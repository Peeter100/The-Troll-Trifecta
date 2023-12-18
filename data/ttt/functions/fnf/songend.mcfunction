scoreboard players set @s fnf_beat 0
scoreboard players set @s fnf_beatoff -1
tag @s add stopbeat

tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"*skill issue rage*","color":"gold"}]

data merge entity @e[type=armor_stand,tag=bf1,limit=1] {HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:2}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=bf2,limit=1] {HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:5}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:100}},{}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{}]}

data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:9}}],Pose:{Head:[0f,5f,0f],LeftArm:[0f,0f,-2.5f],RightArm:[2.5f,0f,2.5f]}}
#item replace entity @e[type=armor_stand,tag=gfarm,limit=1] armor.head with redstone{CustomModelData:6}

scoreboard players set @s fnf_dir_bf 0
scoreboard players set @s fnf_dir_p 0

advancement grant @a only ttt:music