stopsound @a master
schedule clear ttt:act3/aftermogus/tails_fly_loop
scoreboard players set @s dialogueseq 5
scoreboard players set @s dialoguetime 0
playsound custom.finale.prefight.cant_finish_yet master @a -3 30 261 1000
execute if score @s actunlocked matches ..3 run function ttt:act3/aftermogus/dialogueseq5_noskip
execute if score @s actunlocked matches 4.. run function ttt:act3/aftermogus/dialogueseq5_skipoption

setblock -2 31 255 barrier
setblock -3 31 256 barrier
setblock -4 31 255 barrier
setblock -3 31 254 barrier
setblock -3 32 255 barrier
fill -3 30 261 -3 29 261 air destroy
fill -4 29 261 -2 29 261 air destroy
fill -3 29 260 -3 29 262 air destroy
particle explosion_emitter -3 30.0 261 .5 .5 .5 0 2 force @a

data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[-5f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:62}}]}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:97}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:51}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:54}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:55}}],ArmorItems:[{},{},{},{}]}
data merge entity @e[type=armor_stand,tag=p100,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:104}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}],CustomNameVisible:1b}

tp @a[team=p] -3 30 255 0 0
tp @e[type=armor_stand,tag=tails] -1.0 29.875 255 13 0
effect give @a[team=p] invisibility 99999 0 true

summon armor_stand -3 30 251 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","trollgefeet","trollge"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[0F,0F],UUID:[I;2,0,0,0]}
summon armor_stand -3 30 251 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","trollgearms","trollge"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[0F,0F],UUID:[I;3,0,0,0]}