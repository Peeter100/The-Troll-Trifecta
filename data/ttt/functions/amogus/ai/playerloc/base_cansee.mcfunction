scoreboard players set @s am_ai_noticedtime 500
scoreboard players operation @s am_ai_location = @e[type=marker,tag=sv,limit=1] am_location
tag @s add noticedsab