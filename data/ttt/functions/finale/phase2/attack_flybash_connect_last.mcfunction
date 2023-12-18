scoreboard players set @s am_gamescore1 15
scoreboard players remove @s f3_bosshp 3
scoreboard players add @s f3_bosstakenhp 3

execute if score @s f3_bosstakenhp matches ..-45 run scoreboard players remove @s f3_bosshp 15
execute if score @s f3_bosstakenhp matches ..-45 run scoreboard players add @s f3_bosstakenhp 15