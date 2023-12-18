execute as @e[type=armor_stand,tag=watcherhead] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=shaggy,limit=1] eyes
execute as @e[type=armor_stand,tag=watcherhead] run function ttt:finale/afterfinale/npc_look

execute as 00000004-0000-0000-0000-000000000000 at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=shaggy,limit=1] eyes
execute as 00000004-0000-0000-0000-000000000000 run function ttt:update_head_pose