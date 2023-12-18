execute if score @s dialogueseq matches 0 if score @s fnf_actprog matches ..1 run tag @a[team=p] remove hungertext
execute if score @s dialogueseq matches 0 run scoreboard players set @s dialoguetime 0
execute if score @s dialogueseq matches 0 run scoreboard players set @s dialogueseq 1
execute if score @s fnf_actprog matches 0 run scoreboard players set @s fnf_actprog 1
execute unless entity @s[scores={dialogueseq=1,dialoguetime=0..200}] run playsound custom.act1.xina.question master @p[team=p,scores={villinteract=1..}] ~ ~ ~ 1000