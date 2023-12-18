tag @s add noheal
tag @s add weightanim
execute if score @s weight matches 1 run scoreboard players set @s weight 7
execute if score @s weight matches 2 run scoreboard players set @s weight 15
execute if score @s weight matches 3 run scoreboard players set @s weight 32

execute if entity @e[type=marker,tag=sv,scores={fnf_actprog=..2}] run function ttt:act1/water_fall_progress