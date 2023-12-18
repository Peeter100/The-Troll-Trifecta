# deprecated
scoreboard players add @e[type=marker,tag=sv] act 1
execute if entity @e[type=marker,tag=sv,scores={act=..3,actunlocked=1}] if score @e[type=marker,tag=sv,limit=1] act > @e[type=marker,tag=sv,limit=1] actunlocked run tellraw @s {"text":"You haven't unlocked the next act!","color":"red"}
execute if score @e[type=marker,tag=sv,limit=1] act > @e[type=marker,tag=sv,limit=1] actunlocked run scoreboard players set @e[type=marker,tag=sv] act 1

execute if entity @e[type=marker,tag=sv,scores={act=4..}] run scoreboard players set @e[type=marker,tag=sv] act 1
setblock 0 33 4 air

execute if entity @e[type=marker,tag=sv,scores={act=1}] run setblock 0 33 4 oak_wall_sign[facing=north]{Color:"lime",GlowingText:1b,Text1:'{"text":"Starting Act","color":"white","bold":true}',Text2:'{"text":"Act 1 (of 3)","color":"green","bold":true}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/toggle_act"}}'} replace
execute if entity @e[type=marker,tag=sv,scores={act=1}] run data merge entity @e[tag=spawnname,limit=1] {CustomName:'{"text":"Act 1 - The Troll Village","color":"green"}'}

execute if entity @e[type=marker,tag=sv,scores={act=2}] run setblock 0 33 4 oak_wall_sign[facing=north]{Color:"yellow",GlowingText:1b,Text1:'{"text":"Starting Act","color":"white","bold":true}',Text2:'{"text":"Act 2 (of 3)","color":"yellow","bold":true}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/toggle_act"}}'} replace
execute if entity @e[type=marker,tag=sv,scores={act=2}] run data merge entity @e[tag=spawnname,limit=1] {CustomName:'{"text":"Act 2 - Cold Rollback","color":"yellow"}'}

execute if entity @e[type=marker,tag=sv,scores={act=3}] run setblock 0 33 4 oak_wall_sign[facing=north]{Color:"red",GlowingText:1b,Text1:'{"text":"Starting Act","color":"white","bold":true}',Text2:'{"text":"Act 3 (of 3)","color":"red","bold":true}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/toggle_act"}}'} replace
execute if entity @e[type=marker,tag=sv,scores={act=3}] run data merge entity @e[tag=spawnname,limit=1] {CustomName:'{"text":"Act 3 - Mistrustful Magmas","color":"red"}'}