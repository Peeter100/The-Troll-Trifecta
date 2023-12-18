playsound custom.t2s.tails.emerald_tip2 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Are there tools in this world that can grab items from a distance?","color":"gold"}]
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:64}}],Pose:{Head:[15f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:56}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:59}}]}
tag @e[type=armor_stand,tag=tailshead] add dontlook
scoreboard players set @e[type=armor_stand,tag=tailsbody] npcbodytp 9
scoreboard players set @s am_gametimer 1635