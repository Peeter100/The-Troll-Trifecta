tag @s add me
scoreboard players operation .colorid am_ai_color = @s am_ai_color
execute as @e[type=villager,tag=amogai,tag=cansee] unless score @s am_ai_color = .colorid am_ai_color run scoreboard players add @e[type=villager,tag=me] am_ai_timespent 1
tag @s remove me