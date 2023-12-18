scoreboard players add @s st_am_reqtask 1
execute unless score @s st_am_reqtask matches 0..1 run scoreboard players set @s st_am_reqtask 0

setblock -58 31 -17 air
execute if score @s st_am_reqtask matches 0 run setblock -58 31 -17 oak_wall_sign[facing=north]{Color:"green",GlowingText:1b,Text1:'{"text":"Require Tasks","color":"white","bold":true}',Text2:'{"text":"Optional","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/reqtask_try"}}'} replace
execute if score @s st_am_reqtask matches 1 run setblock -58 31 -17 oak_wall_sign[facing=north]{Color:"red",GlowingText:1b,Text1:'{"text":"Require Tasks","color":"white","bold":true}',Text2:'{"text":"Require","color":"red"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/reqtask_try"}}'} replace

setblock -58 30 -17 oak_wall_sign[facing=north]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/reqtask_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace