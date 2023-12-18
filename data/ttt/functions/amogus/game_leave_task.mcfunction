scoreboard players enable @a[tag=amplayer] Sabotage_ID
kill @e[tag=amogtask]
kill @e[type=item]

execute as @e[type=marker,tag=taskmarker] at @s if score @s npcbodytp = @e[type=marker,tag=sv,limit=1] am_gameid run kill @s
scoreboard players set @e[tag=sv] am_gameid 0

tp @a @e[tag=playerloc,limit=1]
kill @e[tag=playerloc]
title @a actionbar {"text":""}

## tp @e[tag=orange,tag=amogzombai] @e[tag=orange,tag=amogai,limit=1]
## tp @e[tag=yellow,tag=amogzombai] @e[tag=yellow,tag=amogai,limit=1]
## tp @e[tag=lime,tag=amogzombai] @e[tag=lime,tag=amogai,limit=1]
## tp @e[tag=green,tag=amogzombai] @e[tag=green,tag=amogai,limit=1]
## tp @e[tag=cyan,tag=amogzombai] @e[tag=cyan,tag=amogai,limit=1]
## tp @e[tag=pink,tag=amogzombai] @e[tag=pink,tag=amogai,limit=1]
## tp @e[tag=purple,tag=amogzombai] @e[tag=purple,tag=amogai,limit=1]
## tp @e[tag=white,tag=amogzombai] @e[tag=white,tag=amogai,limit=1]
## tp @e[tag=black,tag=amogzombai] @e[tag=black,tag=amogai,limit=1]

execute as @e[type=marker,tag=sv,limit=1] at @s run function ttt:amogus/bossbar_update_name
execute if entity @e[type=armor_stand,tag=amogdead] run function ttt:amogus/ai/dead_bodies/force_check_raycast
function ttt:amogus/ai/player/force_check_raycast
tag @e[type=villager,tag=amogai,tag=!cansee] remove taskreport
bossbar set minecraft:amogbar visible true
bossbar set minecraft:noisebar visible false
bossbar set minecraft:sprintbar visible false

scoreboard players set @e[type=marker,tag=sv,limit=1] acttimer 3000