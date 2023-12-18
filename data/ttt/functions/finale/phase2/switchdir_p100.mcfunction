tag @e[tag=bossmob] remove p100target
tag @e[tag=bossmob,limit=1,sort=random] add p100target

execute if score .trollgefight npcbodytp matches 1 run schedule function ttt:finale/phase2/switchdir_p100 70t replace
execute if score .trollgefight npcbodytp matches 1 if predicate ttt:50ch run schedule function ttt:finale/phase2/switchdir_p100 50t replace
execute if score .trollgefight npcbodytp matches 1 if predicate ttt:25ch run schedule function ttt:finale/phase2/switchdir_p100 25t replace