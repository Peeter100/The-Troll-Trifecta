execute if score @s actpart matches 1 run function ttt:tick_act2_part1
execute if score @s actpart matches 2 run function ttt:tick_act2_part2
execute if score @s actpart matches 3 run function ttt:tick_act2_part3

execute as @e[tag=goaway] at @s run tp @s ~ 0 ~
execute as @e[tag=goaway] at @s run kill @s