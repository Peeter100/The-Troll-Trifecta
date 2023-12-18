# execute as @e[type=villager,tag=amogai,tag=cansee] run function ttt:amogus/ai/player/update_timespent
execute store result score .seecount am_ai_timespent if entity @e[type=villager,tag=amogai,tag=cansee,limit=2]
execute if score .seecount am_ai_timespent matches 2.. run scoreboard players add @e[type=villager,tag=amogai,tag=cansee] am_ai_timespent 1

tag @s remove hasvisioncasted