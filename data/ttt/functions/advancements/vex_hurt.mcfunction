#execute if entity @e[type=marker,tag=sv,scores={act=3,actpart=4}] unless entity @e[type=marker,tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_twt=0}] run function ttt:finale/phase2/vex_hit
execute unless entity @e[type=marker,tag=sv,scores={act=2,actpart=2}] unless entity @e[type=marker,tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_twt=0}] run function ttt:finale/phase2/vex_hit
advancement revoke @s only ttt:vex-hurt