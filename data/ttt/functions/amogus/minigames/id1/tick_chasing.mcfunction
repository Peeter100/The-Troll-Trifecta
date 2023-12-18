scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1


# VISUAL

scoreboard players add @s[scores={am_gametimer=42..}] am_gamescore4 1
execute if entity @s[scores={am_gamescore4=1}] at @e[type=zombie_villager,tag=trollgeai] run playsound custom.act3.backroom.chase.static master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore4=1}] at @e[type=zombie_villager,tag=trollgeai] run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore4=3}] at @e[type=zombie_villager,tag=trollgeai] run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore4=5}] at @e[type=zombie_villager,tag=trollgeai] run playsound custom.act3.backroom.chase.static master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore4=5}] at @e[type=zombie_villager,tag=trollgeai] run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore4=7}] at @e[type=zombie_villager,tag=trollgeai] run playsound custom.act3.backroom.chase.footstep master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gamescore4=1}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if entity @s[scores={am_gamescore4=1}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if entity @s[scores={am_gamescore4=2}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if entity @s[scores={am_gamescore4=2}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[5F,0F,-5F],RightArm:[-5F,0F,-5F],Head:[1F,0F,1F]}}
execute if entity @s[scores={am_gamescore4=3}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[5F,0F,0F],RightArm:[2F,0F,2F],Head:[4F,0F,4F]}}
execute if entity @s[scores={am_gamescore4=3}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[10F,0F,-10F],RightArm:[-10F,0F,-10F],Head:[2F,0F,2F]}}
execute if entity @s[scores={am_gamescore4=4}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if entity @s[scores={am_gamescore4=4}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[5F,0F,-5F],RightArm:[-5F,0F,-5F],Head:[1F,0F,1F]}}
execute if entity @s[scores={am_gamescore4=5}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if entity @s[scores={am_gamescore4=5}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],Head:[0F,0F,0F]}}
execute if entity @s[scores={am_gamescore4=6}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[-2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if entity @s[scores={am_gamescore4=6}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[-5F,0F,-5F],RightArm:[5F,0F,-5F],Head:[1F,0F,1F]}}
execute if entity @s[scores={am_gamescore4=7}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[-5F,0F,0F],RightArm:[2F,0F,2F],Head:[4F,0F,4F]}}
execute if entity @s[scores={am_gamescore4=7}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[-10F,0F,-10F],RightArm:[10F,0F,-10F],Head:[2F,0F,2F]}}
execute if entity @s[scores={am_gamescore4=8}] run data merge entity @e[type=armor_stand,tag=trollgearm,limit=1] {Pose:{LeftArm:[-2.5F,0F,0F],RightArm:[1F,0F,1F],Head:[2F,0F,2F]}}
execute if entity @s[scores={am_gamescore4=8}] run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {Pose:{LeftArm:[-5F,0F,-5F],RightArm:[5F,0F,-5F],Head:[1F,0F,1F]}}

execute if entity @s[scores={am_gamescore4=8..}] run scoreboard players set @s am_gamescore4 0



# FUNCTIONAL

execute if entity @s[scores={am_gametimer=42}] run function ttt:amogus/minigames/id1/chase_visual
execute as @e[type=zombie_villager,tag=trollgeai] run function ttt:amogus/minigames/id1/check_player_raycast
execute if entity @e[type=zombie_villager,tag=trollgeai,tag=foundplayer] run scoreboard players set @s[scores={am_gametimer=44..}] am_gametimer 43

execute if entity @s[scores={am_gametimer=105..}] run function ttt:amogus/minigames/id1/chase_expire

scoreboard players remove @s[scores={am_gamescore7=1..}] am_gamescore7 1
execute as @e[type=zombie_villager,tag=trollgeai] at @s run tp @e[type=armor_stand,tag=trollgevis] ~ ~ ~ facing entity @p[tag=amplayer]

execute if entity @s[scores={am_gametimer=43..}] as @a[tag=amplayer] at @s if entity @e[tag=trollgeai,distance=0..2.5] run function ttt:amogus/minigames/id1/die