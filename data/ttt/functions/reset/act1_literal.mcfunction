# act = 1
# actpart = ...

execute if score @s fnf_actprog matches 3 run scoreboard players set @s fnf_actprog 4
execute if score @s fnf_bulliedtails matches 3.. run scoreboard players set @s fnf_bulliedtails 2
scoreboard players set @s fnf_bulliedsniper 0

execute if score @s fnf_seentails matches ..1 run scoreboard players set @s fnf_tailsstate 0
execute if score @s fnf_seentails matches 2.. run scoreboard players set @s fnf_tailsstate 1

execute if score @s fnf_seentails matches 2 run scoreboard players set @s fnf_seentails 3
execute if score @s fnf_seentails matches 1 run summon armor_stand -3 29.875 102 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailsarms","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-30F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:53}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:51}}]}
execute if score @s fnf_seentails matches 1 run summon armor_stand -3 29.875 102 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailstails","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-30F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:55}}]}
execute if score @s fnf_seentails matches 1 run summon armor_stand -3 29.875 102 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailsother","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-30F,0F],HandItems:[{},{}]}
execute if score @s fnf_seentails matches 1 run summon armor_stand -3 29.875 102 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailshead","tails","namednpc","wguntarget"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-6F,0F],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:62}}],CustomNameVisible:0b,CustomName:'{"text":"Tails","color":"gold","italic":false}'}
execute if score @s fnf_seentails matches 1 run fill -3 31 102 -3 35 102 barrier
execute unless score @s fnf_seentails matches 1 run fill -3 31 102 -3 35 102 air

execute if score @s fnf_seentails matches 3.. run summon armor_stand -9 29.25 103.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailsarms","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:75}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:76}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:60}}]}
execute if score @s fnf_seentails matches 3.. run summon armor_stand -9 29.25 103.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailstails","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:73}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:74}}]}
execute if score @s fnf_seentails matches 3.. run summon armor_stand -9 29.25 103.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailsother","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:71}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:72}}]}
execute if score @s fnf_seentails matches 3.. run summon armor_stand -9 29.25 103.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailsother","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:77}},{}]}
execute if score @s fnf_seentails matches 3.. run summon armor_stand -9 29.25 103.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailshead","tails","namednpc","wguntarget"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[25f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:61}}],CustomNameVisible:0b,CustomName:'{"text":"Tails","color":"gold","italic":false}'}
execute if score @s fnf_seentails matches 3.. run fill -9 31 103 -9 34 103 barrier
execute unless score @s fnf_seentails matches 3.. run fill -9 31 103 -9 34 103 air

scoreboard players reset * x
scoreboard players reset * y
scoreboard players reset * z