tag @e[type=armor_stand] remove amogalive
tag @e[type=armor_stand] remove amogdead
tag @e[type=villager] remove amogai
kill @e[tag=forkill]
kill @e[type=item]

tag @a remove offhandnoupdate
tag @a remove am_cankill
tag @a remove am_canvent
tag @a remove am_canreport
tag @a remove am_cantask

scoreboard players reset * am_ai_location
scoreboard players reset * am_ai_d_location
scoreboard players reset * am_ai_l_location
scoreboard players reset * am_ai_noticeddoor
scoreboard players reset * am_ai_noticedtime
scoreboard players reset * am_ai_color
scoreboard players reset * am_ai_timespent
scoreboard players reset * am_sabrange

effect clear @a levitation
effect clear @a invisibility
effect clear @a jump_boost
clear @a

scoreboard players set @s actpart 3
scoreboard players set @s acttimer 0
scoreboard players set @s dialogueseq 0
scoreboard players set @s dialoguetime 0
scoreboard players set @s am_checkuptimer 1000
scoreboard players set @s am_sabfix 0
scoreboard players set @s am_played 1000

bossbar set amogbar visible false
bossbar set sprintbar visible false
bossbar set noisebar visible false
worldborder warning distance 30

tp @a[tag=amplayer] 37 8 103
title @a reset
title @a actionbar {"text":""}

schedule clear ttt:amogus/levelling/crime_rate_schedule