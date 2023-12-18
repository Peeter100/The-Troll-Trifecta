scoreboard players add @s am_maintimer 1
execute if entity @s[scores={am_maintimer=20..}] run scoreboard players set @s am_maintimer 0

execute as @e[tag=amogalive,tag=!noanim] at @s if block ~ -9 ~ gold_block run function ttt:amogus/crewmate_display_disable_anim
execute as @e[tag=amogalive] at @s if block ~ -9 ~ gold_block run scoreboard players add @e[tag=sv] am_sabfix 5

execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody] at @s if block ~ -9 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=armor_stand,tag=orange,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=orange,limit=1]
execute as @e[type=armor_stand,tag=yellow,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=yellow,limit=1]
execute as @e[type=armor_stand,tag=lime,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=lime,limit=1]
execute as @e[type=armor_stand,tag=green,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=green,limit=1]
execute as @e[type=armor_stand,tag=cyan,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=cyan,limit=1]
execute as @e[type=armor_stand,tag=pink,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=pink,limit=1]
execute as @e[type=armor_stand,tag=purple,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=purple,limit=1]
execute as @e[type=armor_stand,tag=white,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=white,limit=1]
execute as @e[type=armor_stand,tag=black,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=black,limit=1]

execute if entity @s[scores={am_sabfix=100..}] run tellraw @a {"text":"Lights have been fixed!","color":"green"}
execute if entity @s[scores={am_sabfix=100..}] run function ttt:amogus/minigames/task_nullify_sabotage