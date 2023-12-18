scoreboard players add @s st_xmas 1
execute unless score @s st_xmas matches 0..1 run scoreboard players set @s st_xmas 0

setblock 20 34 -9 air
execute if score @s st_xmas matches 0 run setblock 20 34 -9 oak_wall_sign[facing=south]{Color:"red",GlowingText:1b,Text1:'{"text":"Xmas Chaos","color":"white","bold":true}',Text2:'{"text":"OFF","color":"red"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/xmas_try"}}'} replace
execute if score @s st_xmas matches 1 run setblock 20 34 -9 oak_wall_sign[facing=south]{Color:"green",GlowingText:1b,Text1:'{"text":"Xmas Chaos","color":"white","bold":true}',Text2:'{"text":"ON","color":"green"}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/setting/xmas_try"}}'} replace

execute if score @s st_xmas matches 0 run data merge entity @e[type=armor_stand,tag=spawnxmas,limit=1] {CustomNameVisible:0b}
execute if score @s st_xmas matches 1 run data merge entity @e[type=armor_stand,tag=spawnxmas,limit=1] {CustomNameVisible:1b}

setblock 20 33 -9 oak_wall_sign[facing=south]{Color:"green",GlowingText:0b,Text2:'{"text":"Right-Click for","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/function ttt:lobby/setting/xmas_info"}}',Text3:'{"text":"more info","color":"green","italic":true}'} replace