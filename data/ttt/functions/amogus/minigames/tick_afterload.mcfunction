# Waiting for hunger

scoreboard players add @s am_gametimer 1
title @a actionbar {"text":"LOADING AMONG US...","color":"white"}

execute as @e[tag=orange,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=orange,limit=1]
execute as @e[tag=yellow,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=yellow,limit=1]
execute as @e[tag=lime,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=lime,limit=1]
execute as @e[tag=green,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=green,limit=1]
execute as @e[tag=cyan,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=cyan,limit=1]
execute as @e[tag=pink,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=pink,limit=1]
execute as @e[tag=purple,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=purple,limit=1]
execute as @e[tag=white,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=white,limit=1]
execute as @e[tag=black,tag=amogalive] at @s run tp @s @e[tag=amogai,tag=black,limit=1]

execute if entity @s[scores={am_gametimer=10005}] run function ttt:amogus/prepare_zombai

execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=orange,tag=amogzombai] @e[tag=orange,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=yellow,tag=amogzombai] @e[tag=yellow,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=lime,tag=amogzombai] @e[tag=lime,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=green,tag=amogzombai] @e[tag=green,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=cyan,tag=amogzombai] @e[tag=cyan,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=pink,tag=amogzombai] @e[tag=pink,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=purple,tag=amogzombai] @e[tag=purple,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=white,tag=amogzombai] @e[tag=white,tag=amogai,limit=1]
execute if entity @s[scores={am_gametimer=10020}] run tp @e[tag=black,tag=amogzombai] @e[tag=black,tag=amogai,limit=1]

execute if entity @s[scores={am_gametimer=10030}] run function ttt:amogus/game_leave_task