scoreboard players add @s st_am_singletask 1
execute unless score @s st_am_singletask matches 0..1 run scoreboard players set @s st_am_singletask 0

#execute positioned 20 34 -9 run function ttt:lobby/setting/singletask_place
execute positioned -58 31 -21 run function ttt:lobby/setting/singletask_place

#setblock 20 33 -9 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/singletask_info_alt"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace
setblock -58 30 -21 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/singletask_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace