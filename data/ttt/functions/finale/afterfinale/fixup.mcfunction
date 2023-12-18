tp @a -100 15 21 -90 0
clear @a
setblock -99 16 21 barrier
setblock -101 16 21 barrier
setblock -100 16 20 barrier
setblock -100 16 22 barrier
setblock -100 17 21 barrier

tp 00000001-0000-0000-0000-000000000000 -95 15 21 90 0
tp 00000002-0000-0000-0000-000000000000 -95 15 21 90 0
tp 00000003-0000-0000-0000-000000000000 -95 15 21 90 0
tp 00000004-0000-0000-0000-000000000000 -97 15 24 -155 -10

function ttt:finale/afterfinale/trollge_explode

data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:13}}]}
data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:16}}]}
data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:8}},{}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[-10f,0f,0f]}}

kill @e[type=small_fireball]
kill @e[type=arrow]
kill @e[type=item]

fill -144 15 -5 -92 15 47 grass replace fire

execute as @e[type=armor_stand,tag=watcherhead] at @s anchored eyes run tp @s ~ ~ ~ facing entity 00000001-0000-0000-0000-000000000000 eyes
execute as @e[type=armor_stand,tag=watcherhead] run function ttt:finale/afterfinale/npc_look

tp 00000001-0000-0000-0000-000000000000 -95 16 21 90 0
summon armor_stand -105 16 21 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","shaggy"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-90F,0F]}