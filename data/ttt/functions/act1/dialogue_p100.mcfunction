scoreboard players add @s dialoguetime 1
execute as @e[type=armor_stand,tag=p100b-head] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=blockcause] eyes
execute as @e[type=armor_stand,tag=p100b-head] at @s run function ttt:update_head_pose
execute as @e[type=armor_stand,tag=p100b-vis] at @s run scoreboard players add @s npcbodytp 1
execute as @e[type=armor_stand,tag=p100b-vis,scores={npcbodytp=10..}] at @s run tp @s @e[tag=p100b-head,limit=1]
execute as @e[type=armor_stand,tag=p100b-vis,scores={npcbodytp=10..}] at @s run scoreboard players set @s npcbodytp 0

execute if score @s dialoguetime matches ..399 run function ttt:act1/dialogue_p100_standard
execute if score @s dialoguetime matches 400.. run function ttt:act1/dialogue_p100_wgun