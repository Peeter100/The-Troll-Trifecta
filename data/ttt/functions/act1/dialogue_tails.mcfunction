scoreboard players add @s dialoguetime 1

execute unless entity @e[type=armor_stand,tag=tailshead,tag=donttp] run function ttt:act1/tails_look

execute if score @s dialoguetime matches 58 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:62}}],Pose:{Head:[15f,20f,0f]}}
execute if score @s dialoguetime matches 58 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I don't know if he's even here...","color":"gold"}]

execute if score @s dialoguetime matches 108 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s dialoguetime matches 108 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Are you from this universe?","color":"gold"}]

execute if score @s dialoguetime matches 137 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I don't know how I ended up here or how to leave...","color":"gold"}]

#execute if score @s dialoguetime matches 204 as @p[tag=tailstarget] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"A lot of creatures got transported here.","color":"aqua"}]
execute if score @s dialoguetime matches 204 as @p[tag=tailstarget] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"A lot of worlds got merged with this one.","color":"aqua"}]

execute if score @s dialoguetime matches 260 run playsound custom.t2s.tails.meeting2 master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 260 run tag @e[type=armor_stand,tag=tailshead,limit=1] add donttp
execute if score @s dialoguetime matches 260 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:64}}],Pose:{Head:[15f,0f,0f]}}
execute if score @s dialoguetime matches 260 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:56}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:59}}]}
execute if score @s dialoguetime matches 260 run tp @e[type=armor_stand,tag=tailsbody] @e[type=armor_stand,tag=tailshead,limit=1]
execute if score @s dialoguetime matches 260 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Huh.","color":"gold"}]

execute if score @s dialoguetime matches 278 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I need to investigate.","color":"gold"}]

execute if score @s dialoguetime matches 313 run tag @e[type=armor_stand,tag=tailshead,limit=1] remove donttp
execute if score @s dialoguetime matches 313 run scoreboard players add @e[type=armor_stand,tag=tailsbody] npcbodytp 9
execute if score @s dialoguetime matches 313 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:61}}],Pose:{Head:[0f,0f,0f]}}
execute if score @s dialoguetime matches 313 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:53}}]}
execute if score @s dialoguetime matches 313 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"What's your name?","color":"gold"}]

execute if score @s dialoguetime matches 334 as @p[tag=tailstarget] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"selector":"@s","color":"aqua"},{"text":".","color":"aqua"}]

execute if score @s dialoguetime matches 370 run playsound custom.t2s.tails.meeting3 master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 370 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:62}
execute if score @s dialoguetime matches 370 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"That sounds hard to pronounce,","color":"gold"}]

execute if score @s dialoguetime matches 400 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"but it's nice to meet you, Minecrafter!","color":"gold"}]
execute if score @s dialoguetime matches 406 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:63}

execute if score @s dialoguetime matches 448 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
execute if score @s dialoguetime matches 448 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}
execute if score @s dialoguetime matches 448 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"My name is Miles Prower, but most call me Tails!","color":"gold"}]

execute if score @s dialoguetime matches 522 run tag @e[type=armor_stand,tag=tailshead,limit=1] add donttp
# execute if score @s dialoguetime matches 522 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:77}},{}],Pose:{Head:[25f,0f,0f]}}
execute if score @s dialoguetime matches 522 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]}}
execute if score @s dialoguetime matches 522 run item replace entity @e[type=armor_stand,tag=tailsother,limit=1] weapon.mainhand with gold_ingot{CustomModelData:77}
execute if score @s dialoguetime matches 522 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:75}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:57}}]}
execute if score @s dialoguetime matches 522 run tp @e[type=armor_stand,tag=tailsbody] @e[type=armor_stand,tag=tailshead,limit=1]
execute if score @s dialoguetime matches 522 run scoreboard players set @s fnf_seentails 2
# execute if score @s dialoguetime matches 522 at @e[type=armor_stand,tag=tailshead,limit=1] run playsound custom.t2s.tails.meeting_lmk master @a ~ ~ ~ 1000
# execute if score @s dialoguetime matches 522 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Let me know if you need anything!","color":"gold"}]

# execute if score @s dialoguetime matches 600 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:77}},{}],Pose:{Head:[0f,0f,0f]}}
execute if score @s dialoguetime matches 600 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s dialoguetime matches 600 run playsound custom.t2s.tails.river_cross_pre master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 600 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Right...!","color":"gold"}]

execute if score @s dialoguetime matches 615 run function ttt:act1/dialogueseq3_nofall