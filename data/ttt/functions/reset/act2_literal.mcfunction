# act = 2
# actpart = ...

execute if score @s cr_seentails matches 1 run scoreboard players set @s cr_seentails 2
execute if score @s cr_seentails matches 2 run summon armor_stand -31 39.875 6 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailsarms","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-75F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:59}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:51}}]}
execute if score @s cr_seentails matches 2 run summon armor_stand -31 39.875 6 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailsbody","tailstails","tails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-75F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:55}}]}
execute if score @s cr_seentails matches 2 run summon armor_stand -31 39.875 6 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tailshead","tails","namednpc"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[15f,0f,0f]},DisabledSlots:4144959,Rotation:[-75F,0F],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:64}}],CustomNameVisible:0b,CustomName:'{"text":"Tails","color":"gold","italic":false}'}
tag @a remove sh_inair