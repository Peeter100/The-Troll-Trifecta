stopsound @a master custom.act1.tails_fly_loop
schedule clear ttt:act2/tails_fly_loop

data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[55f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:53}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:51}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:55}}]}