scoreboard players add @s st_bossdiff 1
execute unless score @s st_bossdiff matches 0..1 run scoreboard players set @s st_bossdiff 0

setblock -55 31 -17 air
execute if score @s st_bossdiff matches 0 run setblock -55 31 -17 oak_wall_sign[facing=north]{Color:"red",GlowingText:1b,Text1:'{"text":"Boss Fights","color":"white","bold":true}',Text2:'{"text":"Default","color":"red"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/bossdiff_try"}}'} replace
execute if score @s st_bossdiff matches 1 run setblock -55 31 -17 oak_wall_sign[facing=north]{Color:"green",GlowingText:1b,Text1:'{"text":"Boss Fights","color":"white","bold":true}',Text2:'{"text":"Easy","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/bossdiff_try"}}'} replace

setblock -55 30 -17 oak_wall_sign[facing=north]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/bossdiff_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace