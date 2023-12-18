execute as @e[type=marker,tag=sv,limit=1] run function ttt:finale/phase1/p100_mobattack

execute if score .trollgefight npcbodytp matches 1 run schedule function ttt:finale/phase1/p100_mobattack_schedule 20t replace
execute if score .trollgefight npcbodytp matches 1 if predicate ttt:50ch run schedule function ttt:finale/phase1/p100_mobattack_schedule 50t replace