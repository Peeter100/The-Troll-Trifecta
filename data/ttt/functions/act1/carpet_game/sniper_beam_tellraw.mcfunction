execute if score @s am_maintimer matches 6..15 if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: ","color":"#FFCCCC"},{"text":"||||||","color":"#550000"}]
execute if score @s am_maintimer matches 16..25 if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: |","color":"#FFCCCC"},{"text":"|||||","color":"#550000"}]
execute if score @s am_maintimer matches 26..35 if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: ||","color":"#FFCCCC"},{"text":"||||","color":"#550000"}]
execute if score @s am_maintimer matches 36..45 if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: |||","color":"#FFCCCC"},{"text":"|||","color":"#550000"}]
execute if score @s am_maintimer matches 46..55 if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: ||||","color":"#FFCCCC"},{"text":"||","color":"#550000"}]
execute if score @s am_maintimer matches 56..65 if score @s fnf_carpetshots matches 1.. run title @a actionbar [{"text":"Sniper Focus: |||||","color":"#FFCCCC"},{"text":"|","color":"#550000"}]

execute if score @s am_maintimer matches -10..60 run schedule function ttt:act1/carpet_game/sniper_beam 5t replace