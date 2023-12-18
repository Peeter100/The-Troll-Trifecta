scoreboard players remove @s am_sabtimer 1
scoreboard players add @s am_maintimer 1

execute if entity @s[scores={am_maintimer=40..}] run execute as @r[tag=amplayer] at @s run playsound custom.amogus.alarm master @a ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=40..}] run scoreboard players set @s am_maintimer 0

execute if entity @s[scores={am_maintimer=0..1}] run worldborder warning distance 900000000
execute if entity @s[scores={am_maintimer=2..3}] run worldborder warning distance 700000000
execute if entity @s[scores={am_maintimer=4..5}] run worldborder warning distance 450000000
execute if entity @s[scores={am_maintimer=6..7}] run worldborder warning distance 300000000
execute if entity @s[scores={am_maintimer=8..9}] run worldborder warning distance 100000000
execute if entity @s[scores={am_maintimer=10..11}] run worldborder warning distance 80000000

execute at @e[tag=amogalive] if block ~ -16 ~ gold_block unless score @s am_sabfix2 matches 1 run function ttt:amogus/sabotage_o2_halffix_admin
execute at @e[tag=amogalive] if block ~ -19 ~ gold_block unless score @s am_sabfix2 matches 2 run function ttt:amogus/sabotage_o2_halffix_o2

execute unless entity @e[tag=amogai,tag=fixing1] unless entity @s[scores={am_sabfix2=1}] run execute as @e[tag=amogai,tag=fixing2,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix1
execute unless entity @e[tag=amogai,tag=fixing2] unless entity @s[scores={am_sabfix2=2}] run execute as @e[tag=amogai,tag=fixing1,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix2

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -16 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -19 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=armor_stand,tag=orange,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=orange,limit=1]
execute as @e[type=armor_stand,tag=yellow,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=yellow,limit=1]
execute as @e[type=armor_stand,tag=lime,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=lime,limit=1]
execute as @e[type=armor_stand,tag=green,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=green,limit=1]
execute as @e[type=armor_stand,tag=cyan,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=cyan,limit=1]
execute as @e[type=armor_stand,tag=pink,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=pink,limit=1]
execute as @e[type=armor_stand,tag=purple,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=purple,limit=1]
execute as @e[type=armor_stand,tag=white,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=white,limit=1]
execute as @e[type=armor_stand,tag=black,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=black,limit=1]

execute if entity @s[scores={am_sabtimer=1..10,am_sabfix=..1}] run tellraw @a {"text":"O2 systems have been fixed!","color":"green"}
execute if entity @s[scores={am_sabtimer=1..10,am_sabfix=..1}] run function ttt:amogus/minigames/task_nullify_sabotage
execute if entity @s[scores={am_sabfix=2..}] run tellraw @a {"text":"O2 systems have been fixed!","color":"green"}
execute if entity @s[scores={am_sabfix=2..}] run function ttt:amogus/minigames/task_nullify_sabotage