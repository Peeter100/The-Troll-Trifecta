execute unless entity @p[tag=tailstarget] run tag @p[team=p] add tailstarget

execute as @e[type=armor_stand,tag=tailshead] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=tailstarget] eyes
#execute if entity @p[tag=tailstarget] run scoreboard players add @e[type=armor_stand,tag=tailsbody] npcbodytp 1
scoreboard players add @e[type=armor_stand,tag=tailsbody] npcbodytp 1
execute as @e[type=armor_stand,tag=tailsbody,scores={npcbodytp=10..}] run tp @s @e[type=armor_stand,tag=tailshead,limit=1]
scoreboard players set @e[type=armor_stand,tag=tailsbody,scores={npcbodytp=10..}] npcbodytp 0

execute unless entity @s[scores={dialoguetime=58..108,dialogueseq=2}] as @e[type=armor_stand,tag=tailshead] run function ttt:update_head_pose