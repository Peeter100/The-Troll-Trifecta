tag @e[tag=bossmob] remove p100target
tag @e[tag=bossmob,limit=1,sort=random] add p100target

execute if score .trollgefight npcbodytp matches 1 run schedule function ttt:finale/phase1/p100_targetchange 70t replace
execute if score .trollgefight npcbodytp matches 1 if predicate ttt:50ch run schedule function ttt:finale/phase1/p100_targetchange 40t replace