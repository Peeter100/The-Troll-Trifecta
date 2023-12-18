scoreboard players reset @a Game_Choice
scoreboard players set @s dialoguetime 370
execute at @e[type=armor_stand,tag=tailshead,limit=1] run playsound custom.t2s.tails.act3_shadow_part1 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Yep!","color":"gold"}]
execute if score @s dialogueseq matches 1 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}