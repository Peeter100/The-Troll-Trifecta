# YOU'RE WELCOME FOR THE NERFS!!!
# This used to only give Resistance I
# which would deal 4 damge instead of 2 !!

tag @s[tag=backroomp] add instadeath
tag @s add noheal

execute if entity @e[type=marker,tag=sv,scores={act=1,fnf_actprog=..2}] run function ttt:act1/water_fall_progress
execute if entity @s[tag=instadeath] run function ttt:act1/water_fall_instadeath
execute unless entity @s[tag=instadeath] run function ttt:act1/water_fall_regular