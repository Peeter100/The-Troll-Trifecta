execute if score @s fnf_bulliedtails matches ..1 run playsound custom.t2s.tails.wgun1 master @a ~ ~ ~ 1000
execute if score @s fnf_bulliedtails matches ..1 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"What was that for?","color":"gold"}]

execute if score @s fnf_tailsstate matches 0 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] weapon.mainhand with air
execute if score @s fnf_tailsstate matches 1 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.offhand with gold_ingot{CustomModelData:76}
execute if score @s fnf_bulliedtails matches ..1 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:67}
execute if score @s fnf_bulliedtails matches ..1 if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:56}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:57}}]}

execute if score @s fnf_bulliedtails matches 2 run playsound custom.t2s.tails.wgun2 master @a ~ ~ ~ 1000
execute if score @s fnf_bulliedtails matches 2 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"You probably don't realize how hot the water is because you're used to falling in...","color":"gold"}]
execute if score @s fnf_bulliedtails matches 2 run scoreboard players set @s dialoguetime 390

execute if score @s fnf_bulliedtails matches 2.. run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:68}
execute if score @s fnf_bulliedtails matches 2.. if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:57}}]}

execute if score @s fnf_bulliedtails matches 3 run playsound custom.t2s.tails.wgun3 master @a ~ ~ ~ 1000
execute if score @s fnf_bulliedtails matches 3 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"You're so annoying...","color":"gold"}]
execute if score @s fnf_bulliedtails matches 3 run scoreboard players set @s dialoguetime 490

execute if score @s fnf_tailsstate matches 0 if score @s fnf_bulliedtails matches 2..3 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s fnf_tailsstate matches 1 if score @s fnf_bulliedtails matches ..3 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[25f,0f,0f]}}
execute if score @s fnf_bulliedtails matches 4.. run function ttt:act1/water_gun/tails_wgun_expire