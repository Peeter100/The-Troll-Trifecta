execute if score @s dialoguetime matches 310 at @e[type=armor_stand,tag=tailshead] run function ttt:act1/water_gun/tails_wgun_start

# 385
execute if score @s dialoguetime matches 311..384 if score @s fnf_tailsstate matches 0 run function ttt:act1/tails_look
execute if score @s dialoguetime matches 311..384 if score @s fnf_tailsstate matches 1 as @e[type=armor_stand,tag=tailshead] at @s if entity @p[team=p,scores={z=..103}] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p,scores={z=..103}] eyes
execute if score @s dialoguetime matches 311..384 if score @s fnf_tailsstate matches 1 as @e[type=armor_stand,tag=tailshead] at @s if entity @p[team=p,scores={z=..103}] run function ttt:update_head_pose

execute if score @s dialoguetime matches 340 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"That water was really hot...","color":"gold"}]
execute if score @s dialoguetime matches 340 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:63}
execute if score @s dialoguetime matches 340 if score @s fnf_tailsstate matches 0 run data merge entity @e[type=armor_stand,tag=tailsarms,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:52}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:53}}]}

execute if score @s dialoguetime matches 386 run function ttt:act1/water_gun/tails_wgun_expire
execute if score @s dialoguetime matches 486 run function ttt:act1/water_gun/tails_wgun_expire
execute if score @s dialoguetime matches 530 run function ttt:act1/water_gun/tails_wgun_expire