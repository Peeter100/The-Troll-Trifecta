scoreboard players add @s st_am_opimp 1
execute unless score @s st_am_opimp matches 0..1 run scoreboard players set @s st_am_opimp 0

#setblock -64 31 -21 air
setblock -63 31 -19 air
execute if score @s st_am_opimp matches 0 run setblock -63 31 -19 oak_wall_sign[facing=east]{Color:"green",GlowingText:1b,Text1:'{"text":"Impostor Type","color":"white","bold":true}',Text2:'{"text":"IXP Levelling","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/opimp_try"}}'} replace
execute if score @s st_am_opimp matches 1 run setblock -63 31 -19 oak_wall_sign[facing=east]{Color:"green",GlowingText:1b,Text1:'{"text":"Impostor Type","color":"white","bold":true}',Text2:'{"text":"Slaughter Mode","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/opimp_try"}}'} replace

setblock -63 30 -19 oak_wall_sign[facing=east]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/opimp_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace