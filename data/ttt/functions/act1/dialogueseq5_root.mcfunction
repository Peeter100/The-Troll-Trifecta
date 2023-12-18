tag @p[team=p] add blockcause
scoreboard players set @s dialogueseq 5
schedule clear ttt:act1/carpet_game/sniper_beam
execute at @p[tag=blockcause] run summon armor_stand ~ 30 158 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100b-vis"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:10}}]}
execute at @p[tag=blockcause] run summon armor_stand ~ 30 158 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100b-head"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[5f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}]}
execute at @p[tag=blockcause] run playsound custom.act1.deny master @a ~ 30.5 158 1000

execute if score @s fnf_haswgun matches ..0 run function ttt:act1/dialogueseq5
execute if score @s fnf_haswgun matches 1.. run function ttt:act1/dialogueseq5_alt