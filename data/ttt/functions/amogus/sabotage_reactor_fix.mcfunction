scoreboard players set @s am_sabid 0
scoreboard players set @s am_sabtimer 0
#scoreboard players set @s am_sabcool 600
scoreboard players operation @s am_sabcool = @s am_lvl_sabcool
scoreboard players set @s am_sabfix 0
worldborder warning distance 30
tellraw @a {"text":"Reactor systems have been fixed!","color":"green"}
execute if score @s am_ventid matches 0 run function ttt:amogus/slot_enable_door_sabotages
title @a actionbar {"text":""}
execute as @e[type=villager,tag=amogai] at @s run data merge entity @s {NoAI:0b}
tag @e[tag=amogalive] remove noanim

execute at @p[tag=amplayer] if block ~ -12 ~ gold_block run function ttt:amogus/ai/player/fix_sabotage
execute at @p[tag=amplayer] if block ~ -13 ~ gold_block run function ttt:amogus/ai/player/fix_sabotage
scoreboard players set @s am_gamescore4 0

tag @e[type=villager,tag=amogai] remove fixing1
tag @e[type=villager,tag=amogai] remove fixing2
tag @e[type=villager,tag=amogai] remove doingtask