# MAIN
execute if entity @s[scores={deathtime=0},tag=!preventdeath] as @a[scores={death=1..}] at @s run function ttt:death
execute if entity @s[scores={deathtime=1..}] run function ttt:tick_dead
scoreboard players add @s[scores={deathtime=0,acttimer=1..}] acttimer 1

execute if score @s deathtime matches 0 if score @s act matches 1 run function ttt:tick_act1
execute if score @s deathtime matches 0 if score @s act matches 2 run function ttt:tick_act2
execute if score @s deathtime matches 0 if score @s act matches 3 run function ttt:tick_act3