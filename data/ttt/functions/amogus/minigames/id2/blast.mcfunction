tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"-BLAST!","color":"#C42626"}]

data merge entity @e[type=armor_stand,tag=shadowhead,limit=1] {Pose:{LeftArm:[-15f,0f,0f],RightArm:[-15f,0f,0f],Head:[-15f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=shadowbody,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:104}}]}

particle dust 1 0 0 1 58 30 75 .5 .75 .5 1 100 force @a
execute as @r[tag=amplayer] at @s run function ttt:amogus/minigames/id2/timeup