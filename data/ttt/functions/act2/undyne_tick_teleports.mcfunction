execute if entity @s[scores={npcbodytp=0}] unless entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=170..}] unless entity @e[type=marker,tag=sv,scores={dialogueseq=3..}] run tp @s ~ ~ ~ 82 0
execute if entity @s[scores={npcbodytp=1..}] unless entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=100..}] anchored eyes run tp @s ~ ~ ~ facing entity @r[team=p,tag=undynequal,limit=1,sort=furthest,scores={x=..-50}] eyes

execute if entity @s[scores={npcbodytp=0}] if entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=170..400}] run tp @s ~ ~ ~ -32 0
execute if entity @s[scores={npcbodytp=0}] if entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=401..}] run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={npcbodytp=0}] if entity @e[type=marker,tag=sv,scores={dialogueseq=3..}] run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={npcbodytp=1..}] if entity @e[type=marker,tag=sv,scores={dialogueseq=2,dialoguetime=100..}] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p,tag=undynequal,limit=1,scores={x=..-50}] eyes

function ttt:update_head_pose