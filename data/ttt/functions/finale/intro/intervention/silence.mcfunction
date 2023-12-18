tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"SILENCE!","color":"#942626","font":"trollge"}]
#execute as @e[type=armor_stand,tag=trollge] at @s run tp @s ~ ~ ~ -90 0
execute as 00000004-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ -155 ~

item replace entity @e[type=armor_stand,tag=shadow,tag=watcherbody,limit=1] weapon.offhand with gold_ingot{CustomModelData:17}
item replace entity @e[type=armor_stand,tag=sans,tag=watcherhead,limit=1] armor.head with bone{CustomModelData:21}
execute as @e[type=armor_stand,tag=watcherhead] at @s run function ttt:finale/intro/intervention/npc_stunlock

data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:61}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:62}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:63}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:67}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:65}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:66}}],Pose:{Head:[0F,0F,0F],RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}