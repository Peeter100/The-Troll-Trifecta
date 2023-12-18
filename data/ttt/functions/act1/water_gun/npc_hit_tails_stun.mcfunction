stopsound @a master custom.t2s.tails.wgun1
stopsound @a master custom.t2s.tails.wgun2
stopsound @a master custom.t2s.tails.wgun3

scoreboard players add @s fnf_bulliedtails 1
scoreboard players set @s dialoguetime 300

execute if score @s fnf_tailsstate matches 0 run tp @e[type=armor_stand,tag=tails] ~ ~ ~ ~ ~
execute if score @s fnf_tailsstate matches 0 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:108}
execute if score @s fnf_tailsstate matches 0 run item replace entity @e[type=armor_stand,tag=tailsother,limit=1] weapon.mainhand with air
execute if score @s fnf_tailsstate matches 1 as @e[type=armor_stand,tag=tailshead,limit=1] at @s run tp @s ~ ~ ~ 180 0
item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.offhand with gold_ingot{CustomModelData:109}
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:66}}],Pose:{Head:[30f,0f,0f]}}
# data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:66}}],Pose:{Head:[30f,0f,0f]}}

# execute if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:67}}],Pose:{Head:[25f,0f,0f]}}
# execute if score @s fnf_tailsstate matches 1 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:67}}],Pose:{Head:[25f,0f,0f]}}