title @a subtitle {"text":""}
execute as @e[type=armor_stand,tag=shadowhead] at @s run playsound custom.t2s.shadow.chaos_blast master @a ~ ~ ~ 1000
tag @e[type=armor_stand,tag=shadowbody] add forcegun
tag @e[type=armor_stand,tag=shadowhead] add stop
#item replace entity @e[tag=shadowbody] weapon.offhand with gold_ingot{CustomModelData:17}

data merge entity @e[type=armor_stand,tag=shadowhead,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:106}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:107}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:105}}],Pose:{LeftArm:[20f,0f,0f],RightArm:[20f,0f,0f],Head:[20f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=shadowbody,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:101}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:102}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:100}}]}