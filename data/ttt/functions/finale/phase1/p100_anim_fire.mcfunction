# Execute as entity that p100 fires at

execute at 00000004-0000-0000-0000-000000000000 anchored eyes run tp 00000004-0000-0000-0000-000000000000 ~ ~ ~ facing entity @s eyes
tag 00000004-0000-0000-0000-000000000000 remove faceplayer
data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:106}}]}
#execute as 00000004-0000-0000-0000-000000000000 run function ttt:update_head_pose
schedule function ttt:finale/phase1/p100_anim_reset 10t replace