particle explosion -2 30 134 .2 .2 .2 0 5 force @a
particle flame -4 30 134 0.8 .2 .2 0 50 normal @a
particle dust 1 0 0 1 -2 30 134 .1 .7 .5 0 100 force @a
particle heart -2 30 134 .1 .7 .5 0 4 normal @a
particle heart -3 31 130 .3 .1 .3 0 3 normal @a
scoreboard players set @s fnf_dd 0
scoreboard players set @s fnf_ad_p 10
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:2}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=peeter2,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:10}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=gfarm,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:7}}]}
schedule function ttt:fnf/animation_expire_gf 10t replace
execute store result bossbar minecraft:fnfhp value run scoreboard players get @s fnf_hp