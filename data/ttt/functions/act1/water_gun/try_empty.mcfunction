scoreboard players set .wguncast npcbodytp 0
execute positioned ^ ^ ^0.5 run function ttt:act1/water_gun/try_empty_raycast

execute unless entity @s[tag=wgunhit] run tellraw @s {"text":"Right-click water to fill the gun!","color":"red"}
execute if entity @s[tag=wgunhit] run function ttt:act1/water_gun/use_empty
tag @s remove wgunhit