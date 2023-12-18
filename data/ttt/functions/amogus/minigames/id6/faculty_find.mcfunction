tp @e[tag=baldi] 27 27.0 146
execute as @e[tag=doorinteract,tag=locked] at @s run playsound custom.act3.bald.doors_single_open master @a ~ ~ ~ 1000
item replace entity @e[tag=doorinteract,tag=locked] weapon.mainhand with gold_ingot{CustomModelData:33} 1
tag @e[tag=doorinteract] add forceopen
tag @e[tag=doorinteract] remove locked
scoreboard players set @s am_gamescore2 -1000