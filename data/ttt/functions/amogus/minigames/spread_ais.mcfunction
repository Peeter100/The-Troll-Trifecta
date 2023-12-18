# Run as server, at player/playerloc

execute as @e[type=armor_stand,tag=amogdead] if score @s am_ai_location = @e[type=marker,tag=sv,limit=1] am_location run tag @e[type=marker,tag=sv,limit=1] add ignorenear
execute if entity @e[type=armor_stand,tag=amogdead,distance=..10] run tag @s add ignorenear
execute if score @s am_gameimportant matches 1 run tag @s remove ignorenear

# execute if entity @s[tag=ignorenear] as @e[tag=gameai,distance=30..] run data merge entity @s {NoAI:1b,Health:100.0f}
# execute if entity @s[tag=ignorenear] as @e[tag=gameai,distance=..29] run data merge entity @s {NoAI:0b,Health:100.0f}
execute if entity @s[tag=ignorenear] as @e[type=villager,tag=amogai,distance=20..] at @s run spreadplayers ~ ~ 12 20 under 2 false @s
execute if entity @s[tag=ignorenear] as @e[type=armor_stand,tag=amogdead,limit=1,sort=nearest] at @s as @e[type=villager,tag=amogai,limit=1,sort=nearest] run function ttt:amogus/minigames/become_agent

# execute unless entity @s[tag=ignorenear] as @e[tag=gameai] run data merge entity @s {NoAI:1b,Health:100.0f}
execute unless entity @s[tag=ignorenear] as @e[type=villager,tag=amogai] at @s run spreadplayers ~ ~ 12 20 under 2 false @s

tag @s remove ignorenear