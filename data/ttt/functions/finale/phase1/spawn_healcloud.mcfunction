kill 00000005-0000-0000-0000-000000000000
summon armor_stand ~ ~ ~ {UUID:[I;5,0,0,0],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","healcloud"],DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:31}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
particle poof ~ ~ ~ .5 .5 .5 0 20 force @a
schedule function ttt:finale/healcloud_kill 170t replace