execute if block ~ ~ ~ #ttt:water_hotgroup run tag @s add wgunhit
scoreboard players add .wguncast npcbodytp 1
execute unless entity @s[tag=wgunhit] unless score .wguncast npcbodytp matches 10.. positioned ^ ^ ^0.5 run function ttt:act1/water_gun/try_empty_raycast