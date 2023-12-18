tp @e[type=armor_stand,tag=trollge] -3 29 134 0 0
playsound custom.t2s.trollge.enoughfnf master @a -3 29 134 1000
tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"ENOUGH","color":"#942626","font":"trollge"}]

data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:41}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:42}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:43}}]}
data merge entity @e[type=armor_stand,tag=trollgearms,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:44}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:45}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:46}}]}