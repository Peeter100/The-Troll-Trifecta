scoreboard players set @e[type=marker,tag=sv] am_gamescore1 0
scoreboard players set @a[tag=amplayer] rc 0
#title @a actionbar {"text":""}
#title @a clear

execute if entity @e[type=marker,tag=sv,scores={am_gamescore2=2000..3200,am_gamescore4=13100..14300}] at @e[tag=doorinteract] run playsound custom.act3.bald.doors_single_close master @a ~ ~ ~ 1000
execute if entity @e[type=marker,tag=sv,scores={am_gamescore2=2000..3200,am_gamescore4=13100..14300}] run item replace entity @e[tag=doorinteract] weapon.mainhand with gold_ingot{CustomModelData:19} 1
execute if entity @e[type=marker,tag=sv,scores={am_gamescore2=2000..3200,am_gamescore4=13100..14300}] run fill 32 21 138 32 23 138 barrier
execute if entity @e[type=marker,tag=sv,scores={am_gamescore2=2000..3200,am_gamescore4=13100..14300}] run tag @e[tag=doorinteract] add locked