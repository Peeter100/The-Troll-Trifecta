scoreboard players set @s dialoguetime 125
tag @a remove tailstarget
tag @r[team=p,scores={Game_Choice=1..}] add tailstarget

kill @e[type=armor_stand,tag=tailsother]
# data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]},HandItems:[{},{}]}
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:82}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:83}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:84}},{}],ArmorItems:[{},{},{},{}]}

playsound custom.act3.sonic.jump master @a 2 32 106 1000
playsound custom.act1.tails_fly_jump master @a 2 32 106 1000

tp @e[type=armor_stand,tag=tails] -3 34.75 105 0 0
tp @a[tag=tailstarget] -3 34 105.4 0 0
effect give @a[tag=tailstarget] levitation 100 255 true

tag @e[type=armor_stand,tag=tailshead] remove wguntarget
scoreboard players reset @a Game_Choice