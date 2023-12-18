execute as @e[type=armor_stand,tag=watcherhead] at @s run tp @e[type=armor_stand,tag=watcherbody,distance=..0.25] @s
execute if score .trollgefight npcbodytp matches 1 run schedule function ttt:finale/update_npc_body 10t replace

execute as @e[type=marker,tag=sv,limit=1] if score @s dialogueseq matches 1..3 run function ttt:finale/update_boss_10t