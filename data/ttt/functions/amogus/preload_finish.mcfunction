title @a reset
title @a actionbar {"text":""}

execute as @e[tag=doormarker] at @s if entity @s[tag=x] run fill ~-1 ~ ~ ~1 ~2 ~ air
execute as @e[tag=doormarker] at @s if entity @s[tag=z] run fill ~ ~ ~-1 ~ ~2 ~1 air
setblock 17 2 120 iron_trapdoor[facing=west,half=top,open=true]
setblock 26 2 122 iron_trapdoor[facing=west,open=true,half=top]
setblock 7 2 80 iron_trapdoor[facing=west,half=top,open=true]

execute if score @s playercount matches 1 run tp @a 35 1 102 -72 0
execute if score @s playercount matches 1 run tag @r[team=p] add amplayer
execute if score @s playercount matches 1 run scoreboard players set @s acttimer 110

execute if score @s playercount matches 2.. run tellraw @a [{"text":"The next section only supports ","color":"yellow"},{"text":"1 player","bold":true},{"text":"!\n"},{"text":"The player who steps on the blue concrete will be the one who's playing, while others will ","color":"light_purple"},{"text":"temporarily","bold":true,"color":"light_purple"},{"text":" join the spectators.","color":"light_purple"}]
execute if score @s playercount matches 2.. run tp @a[team=p] 31 8 103