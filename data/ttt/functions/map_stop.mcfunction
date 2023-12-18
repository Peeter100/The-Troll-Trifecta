# from playing 1 to playing 0

effect clear @a invisibility
scoreboard players set @s playing 0
scoreboard players set @a ready 0
gamemode adventure @a
clear @a
execute as @e[tag=spawnstand] run data merge entity @s {CustomNameVisible:1b}
#execute as @e[tag=p100play] run data merge entity @s {CustomNameVisible:0b}
#execute as @e[tag=namednpc] run data merge entity @s {CustomNameVisible:0b}
kill @e[tag=forkill]

function ttt:reset/summon_lobby_entities

setblock 0 33 4 air
execute if score @s act matches 1 run setblock 0 33 4 oak_wall_sign[facing=north]{Color:"lime",GlowingText:1b,Text1:'{"text":"Starting Act","color":"white","bold":true}',Text2:'{"text":"Act 1 (of 3)","color":"green","bold":true}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/toggle_act"}}'} replace
execute if score @s act matches 1 run data merge entity @e[tag=spawnname,limit=1] {CustomName:'{"text":"Act 1 - The Troll Village","color":"green"}'}
execute if score @s act matches 2 run setblock 0 33 4 oak_wall_sign[facing=north]{Color:"yellow",GlowingText:1b,Text1:'{"text":"Starting Act","color":"white","bold":true}',Text2:'{"text":"Act 2 (of 3)","color":"yellow","bold":true}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/toggle_act"}}'} replace
execute if score @s act matches 2 run data merge entity @e[tag=spawnname,limit=1] {CustomName:'{"text":"Act 2 - Cold Rollback","color":"yellow"}'}
execute if score @s act matches 3 run setblock 0 33 4 oak_wall_sign[facing=north]{Color:"red",GlowingText:1b,Text1:'{"text":"Starting Act","color":"white","bold":true}',Text2:'{"text":"Act 3 (of 3)","color":"red","bold":true}',Text4:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/toggle_act"}}'} replace
execute if score @s act matches 3 run data merge entity @e[tag=spawnname,limit=1] {CustomName:'{"text":"Act 3 - Mistrustful Magmas","color":"red"}'}

setblock 2 33 4 oak_wall_sign[facing=north]{Color:"orange",GlowingText:1b,Text1:'{"text":"================","color":"white","bold":true}',Text2:'{"text":"Extras","color":"gold","bold":true}',Text3:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/interact_extras"}}',Text4:'{"text":"================","color":"white","bold":true}'} replace
setblock -2 33 4 oak_wall_sign[facing=north]{Color:"light_blue",GlowingText:1b,Text1:'{"text":"================","color":"white","bold":true}',Text2:'{"text":"Cheats","color":"aqua","bold":true}',Text3:'{"text":"Right - Click","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/execute at @s as @e[type=marker,tag=sv] run function ttt:lobby/interact_cheats"}}',Text4:'{"text":"================","color":"white","bold":true}'} replace

tp @a 0 30 0 0 0

execute if score @s actunlocked matches 4.. unless entity @s[tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1}] unless entity @e[type=armor_stand,tag=extrastand] run function ttt:lobby/summon_extras
execute if entity @s[tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1}] unless entity @e[type=armor_stand,tag=extrastand] run function ttt:lobby/summon_extras