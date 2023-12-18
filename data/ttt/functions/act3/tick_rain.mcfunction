execute as @e[type=armor_stand,tag=walterhead] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute as @e[type=armor_stand,tag=walterhead] at @s run function ttt:update_head_pose
execute as @e[type=armor_stand,tag=walterbody] at @s run scoreboard players add @s npcbodytp 1
execute as @e[type=armor_stand,tag=walterbody,scores={npcbodytp=10..}] at @s run tp @s @e[type=armor_stand,tag=walterhead,limit=1]
execute as @e[type=armor_stand,tag=walterbody,scores={npcbodytp=10..}] at @s run scoreboard players set @s npcbodytp 0

execute as @e[type=armor_stand,tag=walterhead,tag=!talkedto] at @s if entity @a[team=p,distance=0..5] run function ttt:act3/waltuh_intro

execute if entity @a[team=p,scores={x=-41..-27,y=24..27,z=210..224}] unless entity @s[scores={dialogueseq=2..3}] run function ttt:act3/dialogueseq3_alt
execute if entity @a[team=p,scores={x=-41..-27,y=24..27,z=210..224}] if entity @s[scores={dialogueseq=3,dialoguetime=..599}] run scoreboard players set @s dialoguetime 600

execute if entity @a[team=p,scores={Game_Choice=1..}] run function ttt:act3/rick_decision
execute if entity @a[team=p,scores={y=45..47,z=..200}] run function ttt:act3/amogus_start