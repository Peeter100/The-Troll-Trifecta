execute unless score @s dialoguetime matches 365 if score @s dialoguetime matches ..1100 run function ttt:act3/aftermogus/dialogue_tails_babble
execute if score @s dialoguetime matches 364..368 if entity @a[team=p,scores={Game_Choice=1}] run function ttt:act3/aftermogus/tails_continue_talk

execute as @e[type=armor_stand,tag=tailsbody,limit=1] at @s unless entity @a[team=p,distance=..8] facing entity @p[team=p] feet positioned ^ ^ ^0.2 anchored eyes run function ttt:act3/aftermogus/tails_update_flypos
execute as @e[type=armor_stand,tag=tailsbody,limit=1] at @s unless entity @a[team=p,distance=..4.5] facing entity @p[team=p] feet positioned ^ ^ ^0.2 anchored eyes run function ttt:act3/aftermogus/tails_update_flypos
execute as @e[type=armor_stand,tag=tailsbody,limit=1] at @s if entity @a[team=p,distance=..2] facing entity @p[team=p] feet positioned ^ ^ ^-0.2 anchored eyes run function ttt:act3/aftermogus/tails_update_flypos
execute as @e[type=armor_stand,tag=tailsbody,limit=1] at @s if entity @a[team=p,distance=..1.2] facing entity @p[team=p] feet positioned ^ ^ ^-0.2 anchored eyes run function ttt:act3/aftermogus/tails_update_flypos

execute as @e[type=armor_stand,tag=tailshead,tag=!donttp,limit=1] at @e[type=armor_stand,tag=tailsbody,limit=1] unless entity @a[team=p,distance=..2] if entity @a[team=p,distance=..4.5] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute as @e[type=armor_stand,tag=tailshead,tag=!donttp,limit=1] run function ttt:update_head_pose

scoreboard players add @e[type=armor_stand,tag=tailshead,limit=1] npcbodytp 1
execute as @e[type=armor_stand,tag=tailshead,scores={npcbodytp=10..},limit=1] at @s run tp @e[type=armor_stand,tag=tailsbody] @s
scoreboard players set @e[type=armor_stand,tag=tailshead,scores={npcbodytp=10..},limit=1] npcbodytp 0

execute as @e[type=armor_stand,tag=tailsarms,limit=1] store result score @s npcbodytp run data get entity @s Pos[2]
execute as @e[type=armor_stand,tag=tailsarms,limit=1] unless score @s npcbodytp matches 223..256 at @s run function ttt:act3/aftermogus/tails_fly_stop

execute if entity @a[team=p,scores={z=254..}] run function ttt:act3/aftermogus/dialogueseq5
execute if entity @a[team=p,scores={y=..28}] unless score @s dialogueseq matches 5.. at @r[team=p,scores={y=..28}] run function ttt:act3/aftermogus/dialogueseq4