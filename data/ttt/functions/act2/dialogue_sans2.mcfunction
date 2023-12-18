scoreboard players add @s dialoguetime 1
execute unless entity @a[tag=important,team=p] run tag @a[tag=hadbow] add importantsans
execute if entity @s[scores={dialoguetime=1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"here's the arrow","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=20}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"make sure to keep AHOLD of it heh heh heh","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=20}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=20}] run scoreboard players set @s dialogueseq 1
execute if entity @s[scores={dialoguetime=20}] run scoreboard players set @s dialoguetime 0