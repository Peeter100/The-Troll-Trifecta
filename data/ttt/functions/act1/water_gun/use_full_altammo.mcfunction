scoreboard players set .wguncast npcbodytp 0
execute positioned ^ ^ ^0.5 run function ttt:act1/water_gun/try_empty_raycast

execute if entity @s[tag=wgunhit] run function ttt:act1/water_gun/use_empty
#execute if entity @s[tag=wgunhit] run tellraw @s {"text":"Refilled ammo!","color":"green"}
tag @s remove wgunhit

execute if score @s rc matches 1.. if score @e[type=marker,tag=sv,limit=1] dialogueseq matches 2 run tellraw @s [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"(Let's hear him out first...)","color":"aqua"}]
execute if score @s rc matches 1.. unless score @e[type=marker,tag=sv,limit=1] dialogueseq matches 2 run function ttt:act1/water_gun/use_full