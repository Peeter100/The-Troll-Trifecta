tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
function ttt:update_head_pose
scoreboard players add @s npcbodytp 1
execute if entity @s[scores={npcbodytp=10..}] run tp @e[type=armor_stand,tag=npcbody,distance=0..0.25] @s
scoreboard players set @s[scores={npcbodytp=10..}] npcbodytp 0