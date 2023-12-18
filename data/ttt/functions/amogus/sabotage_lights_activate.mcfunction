execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute as @e[type=villager,tag=amogai,tag=cansee] at @s unless entity @e[type=armor_stand,tag=amogdead,distance=0..30] run scoreboard players operation @s am_ai_l_location = @e[type=marker,tag=sv,limit=1] am_location

scoreboard players set @s am_sabid 3
scoreboard players set @s am_maintimer 0
scoreboard players set @s am_sabfix 0

# Lights are way too easy to abuse
scoreboard players remove @s am_helpmeter 1
execute if entity @e[type=marker,tag=amhost,tag=blackoutdid] run scoreboard players set @s am_helpmeter 0

function ttt:amogus/slot_disable_all_sabotages
function ttt:amogus/bossbar_update_name
execute as @e[tag=amogai] at @s run data merge entity @s {NoAI:1b}
setblock 7 2 80 iron_trapdoor[facing=west,half=top,open=false]
playsound block.iron_door.open master @a 7 2 80