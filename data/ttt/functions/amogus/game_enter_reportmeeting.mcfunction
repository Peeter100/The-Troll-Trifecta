# Ran as server, at reportee

scoreboard players set @s acttimer 3020
scoreboard players set @s dialoguetime 0
scoreboard players set @s am_sabcool 200
execute if score @s am_sabid matches 1..3 run scoreboard players operation @s am_sabcool = @s am_lvl_sabcool
execute unless score @s am_sabid matches 3 run scoreboard players set @s am_sabid 0
execute unless score @s am_sabid matches 3 run scoreboard players set @s am_sabfix 0
scoreboard players set @s am_sabfix2 0
scoreboard players set @s am_sabtimer 0
scoreboard players set @s am_ventid 0

effect clear @a levitation
effect give @a[tag=amplayer] slowness 3 255 true
tag @e[type=armor_stand,tag=amogalive] add noanim

function ttt:amogus/levelling/force_crime_rate
execute as @e[type=armor_stand,tag=amogdead] run function ttt:amogus/reportmeeting/kill_remaining_ais

playsound custom.amogus.body_found master @a ~ ~ ~ 1000
title @a times 10 30 20
bossbar set minecraft:amogbar name [{"text":"\uE003 ","color":"white"},{"text":"--s  ","color":"yellow"},{"text":"Time for a Task remaining: ","color":"red"},{"text":"\uE004 ","color":"white"},{"text":"--s","color":"yellow"}]

title @a title {"text":"BODY REPORTED","color":"red","bold":true}
execute unless entity @a[tag=amplayer,tag=reportee] run title @a subtitle [{"selector":"@e[tag=reportee,limit=1]"},{"text":" has found ","color":"white"},{"selector":"@e[tag=reported,limit=1]"},{"text":"'s body","color":"white"}]
execute if entity @a[tag=amplayer,tag=reportee] run title @a subtitle [{"text":"Red","color":"red"},{"text":" has found ","color":"white"},{"selector":"@e[tag=reported,limit=1]"},{"text":"'s body","color":"white"}]

execute as @e[tag=gameai] at @s run data merge entity @s {NoAI:1b,Health:100.0f}
scoreboard players reset @a Sabotage_ID
clear @a carrot_on_a_stick
function ttt:amogus/crewmate_display_update_0