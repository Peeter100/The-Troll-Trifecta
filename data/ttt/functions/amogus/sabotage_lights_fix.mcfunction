scoreboard players set @s am_sabid 0
#scoreboard players set @s am_sabcool 600
scoreboard players operation @s am_sabcool = @s am_lvl_sabcool
scoreboard players set @s am_sabfix 0
tellraw @a {"text":"Lights have been fixed!","color":"green"}
execute if score @s am_ventid matches 0 run function ttt:amogus/slot_enable_door_sabotages
title @a actionbar {"text":""}
execute as @e[tag=amogai] at @s run data merge entity @s {NoAI:0b}
tag @e[tag=amogalive] remove noanim
setblock 7 2 80 iron_trapdoor[facing=west,half=top,open=true]
playsound block.iron_door.close master @a 7 2 80

execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute at @p[tag=amplayer] if block ~ -9 ~ gold_block if entity @e[type=villager,tag=amogai,tag=cansee] run function ttt:amogus/ai/player/fix_sabotage