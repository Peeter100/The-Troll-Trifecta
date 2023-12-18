clone -5 30 206 -1 34 206 -5 45 206
setblock -3 31 261 air
fill -5 29 218 -1 29 224 minecraft:cracked_nether_bricks replace air
setblock -5 29 225 minecraft:cracked_nether_bricks
setblock -5 29 250 minecraft:cracked_nether_bricks
fill -1 29 248 -2 29 247 minecraft:cracked_nether_bricks replace air
setblock -5 29 246 minecraft:cracked_nether_bricks

# anvill
fill 3 30 230 -9 35 242 air

summon armor_stand -1 29.875 213 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tails","tailsbody","tailsarms"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[153F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:97}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:51}}]}
summon armor_stand -1 29.875 213 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tails","tailsbody","tailstails"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[153F,0F],HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:55}}]}
summon armor_stand -1 29.875 213 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","tails","tailshead"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[153F,0F],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:61}}],CustomNameVisible:1b,CustomName:'{"text":"Tails","color":"gold","italic":false}'}

summon armor_stand -3 29 261 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],CustomNameVisible:0b,CustomName:'{"text":"Peeter100","color":"gold"}'}