tag @e[tag=bossmob] remove trollgevtarget
tag @e[tag=bossmob,limit=1,sort=random] add trollgevtarget

execute if score .trollgefight npcbodytp matches 1 run schedule function ttt:finale/phase2/switchdir_trollge 70t replace
execute if score .trollgefight npcbodytp matches 1 if predicate ttt:50ch run schedule function ttt:finale/phase2/switchdir_trollge 50t replace
execute if score .trollgefight npcbodytp matches 1 if predicate ttt:25ch run schedule function ttt:finale/phase2/switchdir_trollge 25t replace