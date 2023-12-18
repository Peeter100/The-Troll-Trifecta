clone 9 40 164 9 40 164 5 34 162
setblock 5 35 162 air destroy
#playsound block.stone.break master @a 5 35 162 1000
#playsound block.stone.break master @a 5 35 162 1000
summon armor_stand 5.85 35 162.85 {Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Marker:1b,NoGravity:1b,Tags:["forkill","sniper","wguntarget"],Pose:{LeftArm:[15f,0f,0f],RightArm:[0f,0f,0f]},Rotation:[135F,0F],HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:75}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:76}}]}
summon armor_stand -10 30 148 {Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Marker:1b,NoGravity:1b,Tags:["forkill","snipertarget"]}
title @a times 2 20 10
#function ttt:act1/carpet_game/sniper_beam
scoreboard players set @s am_maintimer -2