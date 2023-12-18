# Ran as player, at player

tag @s add reportee
tag @e[type=armor_stand,tag=amogdead,limit=1,sort=nearest] add reported
scoreboard players add @e[type=marker,tag=sv,limit=1] am_selfreports 1
execute as @e[type=marker,tag=sv,limit=1] run function ttt:amogus/game_enter_reportmeeting