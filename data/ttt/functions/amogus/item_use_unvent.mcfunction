effect clear @s levitation
playsound custom.amogus.vent_open master @a ~ ~ ~ 1000

execute if entity @e[tag=sv,scores={am_ventid=1}] run tp @s 42 1 127 90 0
execute if entity @e[tag=sv,scores={am_ventid=2}] run tp @s 26 1 143 70 0

execute if entity @e[tag=sv,scores={am_ventid=11}] run tp @s 16 1 143 -70 0
execute if entity @e[tag=sv,scores={am_ventid=12}] run tp @s -3 1 128 -115 0

execute if entity @e[tag=sv,scores={am_ventid=21}] run tp @s 17 1 128 45 0
execute if entity @e[tag=sv,scores={am_ventid=22}] run tp @s 34 1 115 -180 0
execute if entity @e[tag=sv,scores={am_ventid=23}] run tp @s 7 1 111 -45 0

execute if entity @e[tag=sv,scores={am_ventid=31}] run tp @s 14 1 80 25 0
execute if entity @e[tag=sv,scores={am_ventid=32}] run tp @s 18 1 74 -155 0
execute if entity @e[tag=sv,scores={am_ventid=33}] run tp @s 23 1 80 -45 0

execute if entity @e[tag=sv,scores={am_ventid=41}] run tp @s 41 1 66 101 0
execute if entity @e[tag=sv,scores={am_ventid=42}] run tp @s 26 1 50 27 0

execute if entity @e[tag=sv,scores={am_ventid=51}] run tp @s 18 1 54 -45 0
execute if entity @e[tag=sv,scores={am_ventid=52}] run tp @s 1 1 66 -101 0

title @a actionbar {"text":""}
scoreboard players set @e[tag=sv] am_ventid 0
function ttt:amogus/update_location

# This is the only time we allow the raycast to happen 2 times
# per second as the player might still be in the vent if it's a scheduled function
function ttt:amogus/ai/player/force_check_raycast
# execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute as @e[type=villager,tag=amogai,tag=cansee] at @s run function ttt:amogus/ai/player/noticed_vent