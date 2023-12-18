tp @s ~ ~ ~ facing entity @p[team=p] eyes
scoreboard players add @s npcbodytp 1
execute if score @s npcbodytp matches 10.. run tp @e[type=armor_stand,tag=tailsbody] @s
execute if score @s npcbodytp matches 10.. run scoreboard players set @s npcbodytp 0

function ttt:update_head_pose_fullangle