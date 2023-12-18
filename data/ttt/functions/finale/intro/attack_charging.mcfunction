## am_gamescore1
#alias entity trollgeai 00000001-0000-0000-0000-000000000000
#alias entity trollgefeet 00000002-0000-0000-0000-000000000000
#alias entity trollgearms 00000003-0000-0000-0000-000000000000

execute if score @s am_gamescore1 matches 1 at 00000001-0000-0000-0000-000000000000 run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1.75
execute if score @s am_gamescore1 matches 3 at 00000001-0000-0000-0000-000000000000 run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1.75
execute if score @s am_gamescore1 matches 5 at 00000001-0000-0000-0000-000000000000 run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1.75
execute if score @s am_gamescore1 matches 7 at 00000001-0000-0000-0000-000000000000 run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1.75

execute if score @s am_gamescore1 matches 1 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if score @s am_gamescore1 matches 1 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if score @s am_gamescore1 matches 2 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if score @s am_gamescore1 matches 2 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[5F,0F,-5F],RightArm:[-5F,0F,-5F],Head:[1F,0F,1F]}}
execute if score @s am_gamescore1 matches 3 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[5F,0F,0F],RightArm:[2F,0F,2F],Head:[4F,0F,4F]}}
execute if score @s am_gamescore1 matches 3 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[10F,0F,-10F],RightArm:[-10F,0F,-10F],Head:[2F,0F,2F]}}
execute if score @s am_gamescore1 matches 4 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if score @s am_gamescore1 matches 4 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[5F,0F,-5F],RightArm:[-5F,0F,-5F],Head:[1F,0F,1F]}}
execute if score @s am_gamescore1 matches 5 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if score @s am_gamescore1 matches 5 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if score @s am_gamescore1 matches 6 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[-2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if score @s am_gamescore1 matches 6 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[-5F,0F,-5F],RightArm:[5F,0F,-5F],Head:[1F,0F,1F]}}
execute if score @s am_gamescore1 matches 7 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[-5F,0F,0F],RightArm:[2F,0F,2F],Head:[4F,0F,4F]}}
execute if score @s am_gamescore1 matches 7 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[-10F,0F,-10F],RightArm:[10F,0F,-10F],Head:[2F,0F,2F]}}
execute if score @s am_gamescore1 matches 8 run data merge entity 00000003-0000-0000-0000-000000000000 {Pose:{LeftArm:[-2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if score @s am_gamescore1 matches 8 run data merge entity 00000002-0000-0000-0000-000000000000 {Pose:{LeftArm:[-5F,0F,-5F],RightArm:[5F,0F,-5F],Head:[1F,0F,1F]}}

execute if score @s am_gamescore1 matches 8.. run scoreboard players set @s am_gamescore1 0

execute unless entity @a[team=p,tag=trollgetarget] at 00000001-0000-0000-0000-000000000000 run tag @p[team=p] add trollgetarget
execute as 00000001-0000-0000-0000-000000000000 at @s anchored feet facing entity @p[tag=trollgetarget] feet positioned ^ ^ ^0.5 run tp @s ~ 15 ~ facing entity @p[tag=trollgetarget] feet

execute at 00000001-0000-0000-0000-000000000000 if entity @a[team=p,distance=..2] run function ttt:finale/intro/attack_charging_connect