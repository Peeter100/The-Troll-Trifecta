scoreboard players set @e[type=marker,tag=sv] am_gamescore1 1
scoreboard players set @e[type=marker,tag=sv] am_gamescore5 0
scoreboard players set @a[tag=amplayer] rc 0

execute if entity @e[tag=doorinteract,tag=locked] at @e[tag=doorinteract] run playsound custom.act3.bald.doors_single_open master @a ~ ~ ~ 1000
execute if entity @e[tag=doorinteract,tag=locked] run item replace entity @e[tag=doorinteract] weapon.mainhand with gold_ingot{CustomModelData:30} 1
execute if entity @e[tag=doorinteract,tag=locked] run fill 32 21 138 32 23 138 air
tag @e[tag=doorinteract] remove locked