# execute if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:77}},{}],Pose:{Head:[25f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]}}
execute if score @s fnf_tailsstate matches 0 run item replace entity @e[type=armor_stand,tag=tailsother,limit=1] weapon.mainhand with gold_ingot{CustomModelData:77}
execute if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:75}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:57}}]}
execute if score @s fnf_tailsstate matches 0 run tp @e[type=armor_stand,tag=tailsbody] @e[type=armor_stand,tag=tailshead,limit=1]

# execute if score @s fnf_tailsstate matches 1 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]}}
execute if score @s fnf_tailsstate matches 1 as @e[type=armor_stand,tag=tailshead,limit=1] at @s run tp @s ~ ~ ~ 180 0

execute if score @s fnf_seentails matches ..3 run tag @e[type=armor_stand,tag=tailshead] add hasincreased
execute if score @s fnf_seentails matches ..3 run scoreboard players set @s fnf_seentails 4