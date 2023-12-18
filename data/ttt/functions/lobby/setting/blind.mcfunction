scoreboard players add @s st_am_blindcrew 1
execute unless score @s st_am_blindcrew matches 0..1 run scoreboard players set @s st_am_blindcrew 0

setblock -61 31 -17 air
execute if score @s st_am_blindcrew matches 0 run setblock -61 31 -17 oak_wall_sign[facing=north]{Color:"red",GlowingText:1b,Text1:'{"text":"Blind Crew","color":"white","bold":true}',Text2:'{"text":"Disabled","color":"red"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/blind_try"}}'} replace
execute if score @s st_am_blindcrew matches 1 run setblock -61 31 -17 oak_wall_sign[facing=north]{Color:"green",GlowingText:1b,Text1:'{"text":"Blind Crew","color":"white","bold":true}',Text2:'{"text":"Enabled","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/blind_try"}}'} replace

setblock -61 30 -17 oak_wall_sign[facing=north]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/blind_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace