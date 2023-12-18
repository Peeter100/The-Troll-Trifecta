execute at @e[type=armor_stand,tag=trollgearms,limit=1] run playsound custom.finale.prefight.artifacts_are_mine master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"THOSE BACKROOM ARTIFACTS ARE MINE","color":"#942626","font":"trollge"}]
execute as @a[team=p] at @s run tp @s ~ ~ ~ 180 0
execute as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~ ~ 163 0
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[0f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:13}}]}
data merge entity @e[type=armor_stand,tag=trollgearms,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:16}}]}
particle large_smoke -3 31 251 .5 1 .5 .01 100 force @a
scoreboard players reset @a Game_Choice