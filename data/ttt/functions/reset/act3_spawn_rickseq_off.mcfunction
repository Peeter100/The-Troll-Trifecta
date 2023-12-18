# rickseq entry
fill -14 16 210 -14 17 210 netherrack
setblock -2 15 214 air

# gold chest corridor
summon hoglin 22.0 16 189 {OnGround:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,Tags:["forkill","dashhoglin"]}
summon hoglin 23.5 16 189 {OnGround:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,Tags:["forkill","dashhoglin"]}
summon hoglin 25.0 16 189 {OnGround:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsImmuneToZombification:1b,CannotBeHunted:1b,Tags:["forkill","dashhoglin"]}

# rick spawn pos
summon armor_stand -39.9 25 199 {Rotation:[-90F,0F],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","rickbody"],DisabledSlots:4144959,HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:83}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:84}}]}
summon armor_stand -39.9 25 199 {Rotation:[-90F,0F],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","rickhead","namednpc"],CustomName:'{"text":"Rick Sanchez","color":"aqua","italic":false}',CustomNameVisible:0b,DisabledSlots:4144959,HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:85}},{}]}

# 1st rick portal
fill -38 19 200 -38 20 200 lime_concrete_powder
fill -38 19 199 -38 20 199 air
fill -40 25 199 -40 26 199 barrier
fill -37 26 196 -39 27 196 glass
fill -37 25 196 -38 25 196 crimson_planks

# 2nd rick portal
setblock -13 22 175 blackstone
setblock -13 23 175 netherrack