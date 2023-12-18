# Player is standing still or moving backwards

scoreboard players remove .leeway am_sabrange 1
execute if score .leeway am_sabrange matches ..0 run tag @e[type=villager,tag=amogai,tag=cansee] add noticedsab
schedule function ttt:amogus/distance/o2/measure_distance 5t replace