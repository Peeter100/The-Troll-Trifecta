tp @a[tag=amplayer] 35 1 102 -72 0
scoreboard players set @s am_location 0
scoreboard players set @s acttimer 3000
bossbar set minecraft:amogbar players @a
bossbar set minecraft:amogbar visible true

scoreboard players set @s am_sabcool 200
#scoreboard players set @s am_killcool 600
scoreboard players operation @s am_killcool = @s am_lvl_killcool
scoreboard players set @e[type=marker,tag=doormarker] npcbodytp 0
## function ttt:amogus/slot_disable_all_sabotages

# execute unless score @s am_sabid matches 3 as @e[tag=gameai] run data merge entity @s {NoAI:0b,Health:100.0f}
tag @e[type=armor_stand,tag=amogalive] remove noanim
scoreboard players enable @a[tag=amplayer] Sabotage_ID

scoreboard players set @e[type=villager,tag=amogai] am_ai_location -1
scoreboard players set @e[type=villager,tag=amogai] am_ai_d_location -1
scoreboard players set @e[type=villager,tag=amogai] am_ai_l_location -1
scoreboard players set @e[type=villager,tag=amogai] am_ai_timespent 0
tag @e[type=villager,tag=amogai] remove canseebody
tag @e[type=villager,tag=amogai] remove noticedsab
tag @a remove am_cankill
tag @a remove am_canreport
tag @a remove am_canvent

# teleport moved to prepare_zombai_teleport

clear @a
title @a reset
tag @e remove reportee
function ttt:amogus/ai/player/force_check_raycast