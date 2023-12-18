## fnf_seentails
# 1 = cutscene
# 2 = first time, standing
# 3 = first time, sitting
# 4 = second time
# 5 = third or after

# Alternative function for if the player
# doesn't fall into water but still triggers helpseq

scoreboard players set @s dialogueseq 3
stopsound @a master custom.t2s.tails.meeting_lmk
stopsound @a master custom.t2s.tails.river_cross_pre

# execute if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {HandItems:[{},{}],Pose:{Head:[0f,0f,0f]}}
execute if score @s fnf_tailsstate matches 0 run item replace entity @e[type=armor_stand,tag=tailsother,limit=1] weapon.mainhand with air
execute if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:57}}]}

execute as @e[type=armor_stand,tag=tailshead,limit=1] if entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:68}}]}] run item replace entity @s armor.head with gold_ingot{CustomModelData:63}

execute if score @s fnf_seentails matches ..3 run playsound custom.t2s.tails.river_cross1 master @a ~ ~ ~ 1000
execute if score @s fnf_seentails matches ..3 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Were you trying to get across the river?","color":"gold"}]
execute if score @s fnf_seentails matches ..3 run scoreboard players set @s dialoguetime 0

execute if score @s fnf_seentails matches 4.. run playsound custom.t2s.tails.river_cross2 master @a ~ ~ ~ 1000
execute if score @s fnf_seentails matches 4.. run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Need any help? ","color":"gold"},{"color":"green","text":"[Accept]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Tails' offer!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if score @s fnf_seentails matches 4.. run scoreboard players set @s dialoguetime 39

execute if score @s fnf_tailsstate matches 0 as @e[type=armor_stand,tag=tails] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=tailstarget] eyes
execute if score @s fnf_tailsstate matches 1 if score @s fnf_seentails matches ..4 as @e[type=armor_stand,tag=tailshead,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=tailstarget] eyes
execute if score @s fnf_tailsstate matches 1 if score @s fnf_seentails matches ..4 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[0f,0f,0f]}}