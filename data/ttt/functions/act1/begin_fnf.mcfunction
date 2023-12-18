scoreboard players set @s actpart 2
kill @e[tag=forkill]
kill @e[type=item]
clear @a
effect give @a[team=p] hunger 99999 255 true
effect give @a[team=p] jump_boost 99999 200 true
scoreboard players set @a[team=p] weight 1
effect clear @a[team=p] saturation
# gamemode adventure @a
title @a times 2 5 2
# tellraw @a[team=s] {"text":"All spectators are now temporarily in adventure mode!","color":"green","italic":"true"}
execute if entity @s[scores={playercount=1}] run tp @a -3 25 161
execute if entity @s[scores={playercount=1}] run tag @r[team=p] add fnfplayer
execute if entity @s[scores={playercount=1}] run tellraw @a [{"text":"","color":"yellow"},{"text":"[!] NOTE\n","bold":true},{"text":"This next section was designed with:\n- an FOV set to "},{"text":"Normal (70)","color":"green"},{"text":"\n- FOV Effects set to "},{"text":"100% (Dynamic FOV)","color":"green"}]
execute if entity @s[scores={playercount=1}] run scoreboard players set @s acttimer 10
execute if entity @s[scores={playercount=2..}] run tp @a -3 23 149
execute if entity @s[scores={playercount=2..}] run tellraw @a [{"text":"The next section only supports ","color":"yellow"},{"text":"1 player","bold":true},{"text":"!\n"},{"text":"The player who steps on the blue concrete will be the one who's playing, while others will ","color":"light_purple"},{"text":"temporarily","bold":true,"color":"light_purple"},{"text":" join the spectators.","color":"light_purple"}]
execute if entity @s[scores={playercount=2..}] run scoreboard players set @s acttimer 1
#function ttt:debug/fnf_start_log