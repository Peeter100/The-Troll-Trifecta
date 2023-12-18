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

execute as @e[tag=amogai,tag=fixing1] at @s if block ~ -12 ~ gold_block run tag @s add doingtask
execute as @e[tag=amogalive,tag=!noanim] at @s if block ~ -12 ~ gold_block run function ttt:amogus/crewmate_display_disable_anim
execute as @e[tag=amogai,tag=fixing2] at @s if block ~ -13 ~ gold_block run tag @s add doingtask
execute as @e[tag=amogalive,tag=!noanim] at @s if block ~ -13 ~ gold_block run function ttt:amogus/crewmate_display_disable_anim

scoreboard players set @s am_sabfix 0
execute if entity @e[tag=amogai,tag=fixing1,tag=doingtask] run scoreboard players add @s am_sabfix 1
execute if entity @e[tag=amogai,tag=fixing2,tag=doingtask] run scoreboard players add @s am_sabfix 1

execute if entity @e[tag=amogai,tag=fixing1,tag=doingtask] run execute as @e[tag=amogai,tag=fixing1,tag=!doingtask] at @s run function ttt:amogus/sabotage_switch_to_fix2
execute if entity @e[tag=amogai,tag=fixing2,tag=doingtask] run execute as @e[tag=amogai,tag=fixing2,tag=!doingtask] at @s run function ttt:amogus/sabotage_switch_to_fix1

execute unless entity @e[tag=amogai,tag=fixing1] run execute as @e[tag=amogai,tag=fixing2,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix1
execute unless entity @e[tag=amogai,tag=fixing2] run execute as @e[tag=amogai,tag=fixing1,limit=1,sort=random] at @s run function ttt:amogus/sabotage_switch_to_fix2

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing1] at @s if block ~ -12 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.21 0 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.21 180 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.21 ~ ~ 90 0
execute as @e[type=villager,tag=amogai,tag=!canseebody,tag=fixing2] at @s if block ~ -13 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.21 ~ ~ -90 0

execute as @e[type=armor_stand,tag=orange,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=orange,limit=1]
execute as @e[type=armor_stand,tag=yellow,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=yellow,limit=1]
execute as @e[type=armor_stand,tag=lime,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=lime,limit=1]
execute as @e[type=armor_stand,tag=green,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=green,limit=1]
execute as @e[type=armor_stand,tag=cyan,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=cyan,limit=1]
execute as @e[type=armor_stand,tag=pink,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=pink,limit=1]
execute as @e[type=armor_stand,tag=purple,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=purple,limit=1]
execute as @e[type=armor_stand,tag=white,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=white,limit=1]
execute as @e[type=armor_stand,tag=black,tag=amogalive] at @s run tp @s @e[type=villager,tag=amogai,tag=black,limit=1]

execute if entity @s[scores={am_sabtimer=1..10,am_sabfix=..1}] run tellraw @a {"text":"Reactor systems have been fixed!","color":"green"}
execute if entity @s[scores={am_sabtimer=1..10,am_sabfix=..1}] run function ttt:amogus/minigames/task_nullify_sabotage
execute if entity @s[scores={am_sabfix=2}] run tellraw @a {"text":"Reactor systems have been fixed!","color":"green"}
execute if entity @s[scores={am_sabfix=2}] run function ttt:amogus/minigames/task_nullify_sabotage