scoreboard players add @s st_twt 1
execute unless score @s st_twt matches 0..1 run scoreboard players set @s st_twt 0

setblock -55 31 -21 air
execute if score @s st_twt matches 0 run setblock -55 31 -21 oak_wall_sign[facing=south]{Color:"green",GlowingText:1b,Text1:'{"text":"Twitter Users","color":"white","bold":true}',Text2:'{"text":"Act Rationally","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/twt_try"}}'} replace
execute if score @s st_twt matches 1 run setblock -55 31 -21 oak_wall_sign[facing=south]{Color:"red",GlowingText:1b,Text1:'{"text":"Twitter Users","color":"white","bold":true}',Text2:'{"text":"Get Offended","color":"red"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/twt_try"}}'} replace

setblock -55 30 -21 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/twt_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace