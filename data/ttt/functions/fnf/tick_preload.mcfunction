execute if entity @s[scores={acttimer=0..57}] run effect give @a blindness 3 0 true
effect give @a[team=p] invisibility 99999 0 true
execute as @a[tag=!testing,team=!s] at @s unless entity @s[x=-4,y=25,z=160,dx=2,dy=2,dz=2] run tp @s -3 25 161
title @a actionbar {"text":"LOADING..."}


# YES, I know ths could be quicker
# but it also gives time for people
# to adjust their FOV if they want

execute if entity @s[scores={acttimer=15}] run function ttt:fnf/scoreboard_reset

execute if entity @s[scores={acttimer=18}] run setblock -3 29 132 note_block
execute if entity @s[scores={acttimer=18}] run setblock -3 28 144 honey_block
execute if entity @s[scores={acttimer=20}] run summon armor_stand -3 29.25 132.85 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","gfmain"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,355f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:1}}],ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[scores={acttimer=20}] run summon armor_stand -3 29.25 132.85 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","gfarm"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:5}}],ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:6}}]}

execute if entity @s[scores={acttimer=30}] run summon armor_stand 0 28.875 134 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","bf1"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[75F,0F],HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:2}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[scores={acttimer=30}] run summon armor_stand 0 28.875 134 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","bf2"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[75F,0F],HandItems:[{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:5}}],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:6}}]}

execute if entity @s[scores={acttimer=40}] run summon armor_stand -6 29 134 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","peeter1"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-75F,0F],HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:2}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[scores={acttimer=40}] run summon armor_stand -6 29 134 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","peeter2"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-75F,0F],HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:5}}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:6}}]}

execute if entity @s[scores={acttimer=50}] run summon armor_stand -1 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","bfnotebutton","leftbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={acttimer=50}] run summon armor_stand 0 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","bfnotebutton","downbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={acttimer=50}] run summon armor_stand 1 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","bfnotebutton","upbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:13}},{}]}
execute if entity @s[scores={acttimer=50}] run summon armor_stand 2 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","bfnotebutton","rightbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:14}},{}]}

execute if entity @s[scores={acttimer=60}] run summon armor_stand -8 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","pnotebutton","leftbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={acttimer=60}] run summon armor_stand -7 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","pnotebutton","downbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={acttimer=60}] run summon armor_stand -6 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","pnotebutton","upbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:13}},{}]}
execute if entity @s[scores={acttimer=60}] run summon armor_stand -5 32 135 {ShowArms:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","pnotebutton","rightbutton"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:14}},{}]}

execute if entity @s[scores={acttimer=80}] run summon armor_stand -5 29 132 {Rotation:[-25F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","trollgefeet","trollge"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959}
execute if entity @s[scores={acttimer=80}] run summon armor_stand -5 29 132 {Rotation:[-25F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","trollgearms","trollge"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959}

#execute if entity @s[scores={acttimer=70}] run summon armor_stand -3 29.06250 142 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","dir","updir"]}
#execute if entity @s[scores={acttimer=80}] run summon armor_stand -3 29.06250 146 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","dir","downdir"]}
#execute if entity @s[scores={acttimer=90}] run summon armor_stand -5 29.06250 144 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","dir","leftdir"]}
#execute if entity @s[scores={acttimer=100}] run summon armor_stand -1 29.06250 144 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","fnfnpc","dir","rightdir"]}

execute if entity @s[scores={acttimer=109}] run bossbar set minecraft:fnfhp value 50
execute if entity @s[scores={acttimer=110}] run title @a actionbar {"text":""}
execute if entity @s[scores={acttimer=110}] run effect clear @a[tag=fnfplayer] jump_boost
execute if entity @s[scores={acttimer=110}] run bossbar set minecraft:fnfhp players @a
execute if entity @s[scores={acttimer=110}] run bossbar set minecraft:fnfhp visible true
execute if entity @s[scores={acttimer=110}] run tp @a -3 29.06250 144 180 0