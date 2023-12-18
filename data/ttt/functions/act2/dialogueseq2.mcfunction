# sans hey there --> undyne item selling

stopsound @a master custom.act2.sans.speech_long
stopsound @a master custom.act2.sans.speech_short
scoreboard players set @s dialoguetime 0
execute if score @s cr_beeninbattle matches 1.. run scoreboard players set @s dialoguetime 88
scoreboard players set @s dialogueseq 2