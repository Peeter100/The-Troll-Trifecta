scoreboard players set @e[type=marker,tag=sv] dialogueseq 3
scoreboard players set @e[type=marker,tag=sv] dialoguetime 550

kill @e[type=armor_stand,tag=tailsother]
# data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]},HandItems:[{},{}]}
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:85}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:88}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:84}},{}],ArmorItems:[{},{},{},{}]}
tag @e[type=armor_stand,tag=tailshead] remove wguntarget

#playsound custom.act3.sonic.jump master @a 2 32 106 1000
#playsound custom.act1.tails_fly_jump master @a 2 32 106 1000
playsound entity.player.hurt_on_fire master @a -3 31 102 1000
execute as @a at @s run playsound custom.act3.sonic.jump master @s ~ ~ ~ 0.5
execute as @a at @s run playsound custom.act1.tails_fly_jump master @s ~ ~ ~ 0.5
execute as @e[type=armor_stand,tag=tails] at @s run tp @s ~ 30.5 ~ -38 0

fill -3 31 102 -3 35 102 air
scoreboard players set @s rc 0