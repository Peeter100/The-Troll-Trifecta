execute if entity @a[tag=amplayer,scores={x=-24..-22,z=132}] run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
#execute unless entity @a[tag=amplayer,scores={x=-24..-22,z=132}] run tp @s ~ ~ ~ 0 0
execute unless entity @a[tag=amplayer,scores={x=-24..-22,z=132}] if score @s npcbodytp matches 4 run function ttt:amogus/minigames/id12/npc_look_shadow_tp
function ttt:finale/npc_look_shadow
scoreboard players add @s npcbodytp 1
execute if entity @s[scores={npcbodytp=10..}] run tp @e[type=armor_stand,tag=npcbody,distance=0..0.25] @s
scoreboard players set @s[scores={npcbodytp=10..}] npcbodytp 0