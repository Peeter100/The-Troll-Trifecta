execute if entity @e[type=marker,tag=sv,scores={dialoguetime=..19,dialogueseq=0}] run stopsound @a master
execute if entity @e[type=marker,tag=sv,scores={dialoguetime=..19,dialogueseq=0}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"make sure to keep AHOLD of it heh heh heh","color":"#C4E2FF","font":"sans"}]
execute if entity @e[type=marker,tag=sv,scores={dialoguetime=..19,dialogueseq=0}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000
execute if entity @e[type=marker,tag=sv,scores={dialoguetime=..19,dialogueseq=0}] run scoreboard players set @s dialoguetime 21
scoreboard players set @s deathreason 28
kill @s