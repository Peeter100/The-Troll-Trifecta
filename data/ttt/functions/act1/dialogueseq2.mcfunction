scoreboard players set @s dialoguetime 0
scoreboard players set @s dialogueseq 2
playsound custom.t2s.tails.meeting1 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Excuse me, have you seen a ","color":"gold"},{"text":"blue hedgehog","color":"blue"},{"text":" anywhere?","color":"gold"}]
item replace entity @e[type=armor_stand,tag=tailshead] armor.head with gold_ingot{CustomModelData:63}
execute as @e[type=armor_stand,tag=tailshead] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
scoreboard players set @e[type=armor_stand,tag=tailsbody] npcbodytp 9
tag @p[team=p] add tailstarget