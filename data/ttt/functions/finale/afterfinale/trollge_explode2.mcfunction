execute at @r[team=p] run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @e[type=marker,tag=sv,scores={act=3,actpart=4,dialoguetime=1118..1210}] run schedule function ttt:finale/afterfinale/trollge_explode2 2t replace