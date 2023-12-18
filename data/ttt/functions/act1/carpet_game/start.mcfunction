tag @s add instadeath
tag @s add parkourdone
tag @s remove hungertext
effect give @s jump_boost 99999 200 true
tag @e[tag=npcb1] add goaway
tag @e[tag=npcb2] add goaway
tag @e[tag=foodshop] add goaway
scoreboard players reset @a Game_Choice
scoreboard players set @e[type=marker,tag=sv,scores={fnf_seentails=0}] fnf_seentails 1
scoreboard players set @e[type=marker,tag=sv,scores={fnf_actprog=..2}] fnf_actprog 3
#tellraw @s {"text":"WARNING: This maze likes to change whenever it wants.","color":"green"}