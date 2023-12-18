## Main function for deciding sussy baka factor
# End each condition with a tellraw

## All accusations (in order):
# - saw in immediate area (crewmate) +12
# - saw in the area (crewmate) +4
# - you were shut inside of that area (crewmate) +3
# - lights went off while in that area (crewmate) +6
# - haven't seen in a while (crewmate) +10
# - too much time with victim +10
# - too many nearby door closes +6
# - selfreports +25/+50
# - ignoring sabotages +4 (and +1 per crewmate seen)
# - not fixing sabotages +15/+47
# - weird task execution +10

scoreboard players operation @s am_visualizer = @s am_susscore
execute as @e[type=villager,tag=amogai] if score @s am_ai_location = @e[type=armor_stand,tag=reported,limit=1] am_ai_location if score @s am_ai_noticedtime matches 0.. run function ttt:amogus/reportmeeting/accusations/form_saw_accusations
execute as @e[type=villager,tag=amogai] if score @s am_ai_d_location = @e[type=armor_stand,tag=reported,limit=1] am_ai_location if score @s am_ai_noticeddoor matches 0.. run function ttt:amogus/reportmeeting/accusations/area_door
execute as @e[type=villager,tag=amogai] if score @s am_ai_l_location = @e[type=armor_stand,tag=reported,limit=1] am_ai_location run function ttt:amogus/reportmeeting/accusations/area_lights
execute unless entity @s[tag=hasdiamonds,scores={st_am_blindcrew=1}] as @e[type=villager,tag=amogai] if score @s am_ai_noticedtime matches -1700 run function ttt:amogus/reportmeeting/accusations/hiding
scoreboard players set .max am_ai_timespent 0
scoreboard players operation .max am_ai_timespent > @e[type=villager,tag=amogai] am_ai_timespent
scoreboard players operation .max am_ai_timespent -= @e[type=armor_stand,tag=reported,limit=1] am_ai_timespent
execute if score .max am_ai_timespent matches ..-19 run function ttt:amogus/reportmeeting/accusations/victim_time
execute if score @s am_usednearby matches 5.. run function ttt:amogus/reportmeeting/accusations/sabotage_door
execute if score @s am_selfreports matches 3 run function ttt:amogus/reportmeeting/accusations/selfreport
execute if score @s am_selfreports matches 5.. run function ttt:amogus/reportmeeting/accusations/selfreport_major
execute store result score .witnessed am_sabrange if entity @e[type=villager,tag=amogai,tag=noticedsab]
execute if score .witnessed am_sabrange matches 1.. run function ttt:amogus/reportmeeting/accusations/sabotage_ignore
scoreboard players operation @s am_susscore += .witnessed am_sabrange
execute if score @s am_helpmeter matches ..0 run function ttt:amogus/reportmeeting/accusations/sabotage_notfix
execute if entity @e[type=villager,tag=amogai,tag=taskreport,limit=1] run function ttt:amogus/reportmeeting/accusations/sabotage_task

execute as @e[type=villager,tag=amogai,tag=hassusses] run function ttt:amogus/reportmeeting/accusations/vine_thud

execute if score @s am_visualizer = @s am_susscore at @p[tag=amplayer] run playsound custom.act1.ben.hohoho master @a ~ ~ ~ 1000
execute if score @s am_visualizer = @s am_susscore run tellraw @a {"text":"*none*","color":"gray"}
execute if score @s am_crewmates matches ..7 unless score @s am_visualizer = @s am_susscore run scoreboard players add @s am_susscore 3

scoreboard players set @s[scores={am_susscore=101..}] am_susscore 100