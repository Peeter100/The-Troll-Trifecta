tag @e[type=villager,tag=amogai] remove cansee
execute at @e[type=armor_stand,tag=playerloc,limit=1] as @e[type=villager,tag=amogai,distance=0..20] at @s run function ttt:amogus/ai/playerloc/base_check

execute as @e[type=marker,tag=sv,limit=1] if score @s am_sabid matches 1..2 if score @s acttimer matches 3040..3049 run schedule function ttt:amogus/ai/playerloc/force_check_raycast 5t replace