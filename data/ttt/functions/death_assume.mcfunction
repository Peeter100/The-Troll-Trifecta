# Try to convert deathreason away from ID 0

execute if score @s deathreason matches 0 if block ~ ~ ~ lava run scoreboard players set @s deathreason 1
execute if score @s deathreason matches 0 if block ~ ~-1 ~ lava run scoreboard players set @s deathreason 1
execute if score @s deathreason matches 0 unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run scoreboard players set @s deathreason 2
execute if score @s deathreason matches 0 run scoreboard players set @s[tag=clashplayer] deathreason 25
execute if score @s deathreason matches 0 run scoreboard players set @s[scores={z=21..34},tag=1hpchallenge] deathreason 18
execute if score @s deathreason matches 0 run scoreboard players set @s[tag=1hpchallenge] deathreason 17
execute if score @s deathreason matches 0 run scoreboard players set @s[scores={x=19..49,y=19..26,z=153..180},tag=amplayer] deathreason 25
execute if score @s deathreason matches 0 if entity @e[type=marker,tag=sv,scores={st_xmas=1}] run scoreboard players set @s deathreason 62