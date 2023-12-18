#tellraw @s [{"text":"Welcome to ","color":"green"},{"text":"The Troll Trifecta","color":"yellow"},{"text":"!\nMake sure to download the resource pack from the map page!"},{"text":"\n(if it's not enabled automatically)","color":"#539E4A","italic":true}]
title @s reset

scoreboard players set @s ms_seqid 1
scoreboard players set @s ms_seqtimer 30

execute if entity @e[type=marker,tag=sv,scores={playing=0}] run tp @s 0 30 0
execute if entity @e[type=marker,tag=sv,scores={playing=0}] run gamemode adventure @s
execute if entity @e[type=marker,tag=sv,scores={playing=1..}] run function ttt:rejoin_playing

clear @s
scoreboard players set @s ready 0
scoreboard players set @s[scores={verified=2..}] verified 1
scoreboard players set @s left 0

forceload add -2 -1 40 220
# I don't feel like dealing with act3 loaded positions
forceload add -1 14 8 260