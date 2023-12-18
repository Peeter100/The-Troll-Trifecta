# rick spawn pos
summon armor_stand -38 19 199.9 {Rotation:[180F,0F],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","rickbody"],DisabledSlots:4144959,HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:83}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:84}}]}
summon armor_stand -38 19 199.9 {Rotation:[180F,0F],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","rickhead","namednpc"],CustomName:'{"text":"Rick Sanchez","color":"aqua","italic":false}',CustomNameVisible:0b,DisabledSlots:4144959,HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:85}},{}]}

# 1st rick portal gets closed (rick stands there)
fill -38 19 200 -38 20 200 netherrack
fill -38 19 199 -38 20 199 barrier
fill -40 25 199 -40 26 199 air
fill -37 26 196 -39 27 196 air
fill -37 25 196 -38 25 196 air

# 2nd portal gets created
execute if score @s am_played matches 4.. unless block -13 22 175 lime_concrete_powder run function ttt:act3/spawn_rick_altportal