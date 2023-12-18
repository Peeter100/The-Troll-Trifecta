scoreboard players add @s st_fnf_fire 1
execute unless score @s st_fnf_fire matches 0..1 run scoreboard players set @s st_fnf_fire 0

setblock -52 31 -21 air
execute if score @s st_fnf_fire matches 0 run setblock -52 31 -21 oak_wall_sign[facing=south]{Color:"green",GlowingText:1b,Text1:'{"text":"Fire Arrows","color":"white","bold":true}',Text2:'{"text":"Ignore","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/fire_try"}}'} replace
execute if score @s st_fnf_fire matches 1 run setblock -52 31 -21 oak_wall_sign[facing=south]{Color:"red",GlowingText:1b,Text1:'{"text":"Fire Arrows","color":"white","bold":true}',Text2:'{"text":"Deal Damage","color":"red"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/fire_try"}}'} replace

setblock -52 30 -21 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/fire_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace