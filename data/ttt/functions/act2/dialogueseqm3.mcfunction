scoreboard players set @s dialoguetime 0
scoreboard players set @s dialogueseq -3

data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:61}}],Pose:{Head:[25f,0f,0f]}}
data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:85}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:88}}],ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:81}}]}
data merge entity @e[type=armor_stand,tag=tailstails,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:84}},{}],ArmorItems:[{},{},{},{}]}

#execute at @e[type=armor_stand,tag=tailshead] run playsound custom.t2s.tails.wand_pleasegive master @a ~ ~ ~ 1000
#tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Hey, above you!","color":"gold"}]
function ttt:act2/tails_fly_loop