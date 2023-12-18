#execute if score @s fnf_beat matches 0 as @e[type=armor_stand,tag=headbop,limit=2] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:93}}]}] run data merge entity @s {Pose:{Head:[12f,0f,0f]}}
#execute if score @s fnf_beat matches 2 as @e[type=armor_stand,tag=headbop,limit=2] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:93}}]}] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
#execute if score @s fnf_beat matches 4 as @e[type=armor_stand,tag=headbop,limit=2] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:93}}]}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute if score @s fnf_beat matches 0 if score @s fnf_dir_p matches 0 as @e[type=armor_stand,tag=peeter1,limit=1] run data merge entity @s {Pose:{Head:[12f,0f,0f]}}
execute if score @s fnf_beat matches 2 if score @s fnf_dir_p matches 0 as @e[type=armor_stand,tag=peeter1,limit=1] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute if score @s fnf_beat matches 4 if score @s fnf_dir_p matches 0 as @e[type=armor_stand,tag=peeter1,limit=1] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if score @s fnf_beat matches 0 if score @s fnf_dir_bf matches 0 as @e[type=armor_stand,tag=bf1,limit=1] run data merge entity @s {Pose:{Head:[12f,0f,0f]}}
execute if score @s fnf_beat matches 2 if score @s fnf_dir_bf matches 0 as @e[type=armor_stand,tag=bf1,limit=1] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute if score @s fnf_beat matches 4 if score @s fnf_dir_bf matches 0 as @e[type=armor_stand,tag=bf1,limit=1] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

#execute if score @s fnf_beat matches 0 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,12f]}}
#execute if score @s fnf_beat matches 2 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,5f]}}
#execute if score @s fnf_beat matches 4 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,2f]}}
#execute if score @s fnf_beat matches 6 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,0f]}}
#execute if score @s fnf_beat matches 8 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,-2f]}}
#execute if score @s fnf_beat matches 10 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,-5f]}}
#execute if score @s fnf_beat matches 12 run data merge entity @e[tag=gfmain,limit=1] {Pose:{Head:[0f,355f,-12f]}}

execute if score @s fnf_beat matches 0 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,12f],LeftArm:[0f,0f,-2.5f],RightArm:[2.5f,0f,2.5f]}}
execute if score @s fnf_beat matches 2 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,5f],LeftArm:[0f,0f,-1.2f],RightArm:[1.2f,0f,1.2f]}}
execute if score @s fnf_beat matches 4 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,2f],LeftArm:[0f,0f,-0.35f],RightArm:[0.35f,0f,0.35f]}}
execute if score @s fnf_beat matches 6 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score @s fnf_beat matches 8 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,-2f],LeftArm:[0f,0f,-0.25f],RightArm:[0.25f,0f,0.25f]}}
execute if score @s fnf_beat matches 10 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,-5f],LeftArm:[0f,0f,-1f],RightArm:[1f,0f,1f]}}
execute if score @s fnf_beat matches 12 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,-10f],LeftArm:[0f,0f,-2f],RightArm:[2f,0f,2f]}}