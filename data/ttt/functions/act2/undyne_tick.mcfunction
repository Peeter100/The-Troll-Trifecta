#execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]

tag @a[tag=importantund,tag=!undynequal] add undynequal
tag @a[tag=!importantund] remove undynequal

execute unless entity @a[tag=importantund] run tag @a[team=p,scores={x=-52,z=90..96}] add undynequal
execute unless entity @a[tag=importantund] run tag @a[team=p,scores={x=..-53,z=90..99}] add undynequal
execute unless entity @a[tag=importantund] run tag @a[team=p,scores={x=-55..-53,z=90..99}] add undynequal
execute unless entity @a[tag=importantund] run tag @a[team=p,scores={x=..-56,z=90..108}] add undynequal

execute unless entity @s[scores={npcbodytp=..-10}] run scoreboard players remove @s npcbodytp 1
execute unless entity @s[scores={npcbodytp=10..}] if entity @a[tag=undynequal,scores={x=..-50}] run scoreboard players add @s npcbodytp 3

execute unless entity @s[tag=stoplooking] run function ttt:act2/undyne_tick_teleports

execute if entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=170..}] as @e[type=armor_stand,tag=undbody1] at @s run scoreboard players add @s npcbodytp 1
execute if entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=170..}] as @e[type=armor_stand,tag=undbody1,scores={npcbodytp=10..}] at @s run tp @s @e[type=armor_stand,tag=undhead,limit=1]
execute if entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=170..}] as @e[type=armor_stand,tag=undbody1,scores={npcbodytp=10..}] at @s run scoreboard players set @s npcbodytp 0