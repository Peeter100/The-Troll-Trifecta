# prevents this from running 2 times a tick when this function is force-called
tag @e[type=marker,tag=amhost,limit=1] add hasvisioncasted

# thing
scoreboard players set .seecount am_ai_timespent 0
tag @e[type=villager,tag=amogai] remove cansee
execute as @e[type=marker,tag=sv,limit=1] if score @s am_ventid matches 0 unless score @s am_sabid matches 3 unless score @s st_am_blindcrew matches 1 at @r[tag=amplayer] as @e[type=villager,tag=amogai,distance=0..20] at @s run function ttt:amogus/ai/player/base_check

execute if score .seecount am_ai_timespent matches 2.. run scoreboard players add @e[type=villager,tag=amogai,tag=cansee] am_ai_timespent 1

execute if score @e[type=marker,tag=sv,limit=1] acttimer matches 3000..3009 run schedule function ttt:amogus/ai/player/force_check_raycast 5t replace