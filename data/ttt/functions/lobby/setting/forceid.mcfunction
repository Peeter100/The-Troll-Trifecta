scoreboard players add @s st_am_forceid 1
execute unless score @s st_am_forceid matches 0..12 run scoreboard players set @s st_am_forceid 0

execute positioned 16 34 -9 run function ttt:lobby/setting/forceid_place
execute positioned -61 31 -21 run function ttt:lobby/setting/forceid_place

setblock 16 33 -9 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/forceid_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace
setblock -61 30 -21 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/forceid_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace