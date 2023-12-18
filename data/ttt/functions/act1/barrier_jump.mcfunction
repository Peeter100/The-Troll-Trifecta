particle minecraft:block_marker barrier 3 31.5 113 0 0 0 0 1 force @a
particle minecraft:block_marker barrier 3 32.5 113 0 0 0 0 1 force @a
particle minecraft:block_marker barrier 3 33.5 113 0 0 0 0 1 force @a
playsound custom.act2.bozo master @a 3 31 113 1000
execute unless entity @e[tag=sv,scores={dialogueseq=4..}] run scoreboard players set @e[tag=sv] dialoguetime 20
execute unless entity @e[tag=sv,scores={dialogueseq=4..}] run scoreboard players set @e[tag=sv] dialogueseq 4
summon armor_stand 2 15 126 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","backrooment"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:2}},{}]}