# execute if score @s am_sabid matches 1..3 run tag @e[type=villager,tag=cansee] add noticedsab
execute at @e[type=armor_stand,tag=playerloc,limit=1] run function ttt:amogus/minigames/spread_ais

scoreboard players set @s am_sabid 0
scoreboard players set @s am_sabtimer 0
#scoreboard players set @s am_sabcool 600
scoreboard players operation @s am_sabcool = @s am_lvl_sabcool
scoreboard players set @s am_sabfix 0
scoreboard players set @s am_sabfix2 0
worldborder warning distance 30
tag @e[type=armor_stand,tag=amogalive] remove noanim

tag @e[type=villager,tag=amogai] remove fixing1
tag @e[type=villager,tag=amogai] remove fixing2
tag @e[type=villager,tag=amogai] remove doingtask

execute as @e[type=marker,tag=doormarker] at @s if entity @s[tag=x] run fill ~-1 ~ ~ ~1 ~2 ~ air
execute as @e[type=marker,tag=doormarker] at @s if entity @s[tag=z] run fill ~ ~ ~-1 ~ ~2 ~1 air

setblock 17 2 120 iron_trapdoor[facing=west,half=top,open=true]
setblock 26 2 122 iron_trapdoor[facing=west,open=true,half=top]
setblock 7 2 80 iron_trapdoor[facing=west,half=top,open=true]