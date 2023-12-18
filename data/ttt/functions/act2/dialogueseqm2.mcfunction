scoreboard players set @s dialoguetime 19
#execute if score @s cr_beeninbattle matches 4.. run scoreboard players set @s dialoguetime 89
execute if score @s cr_seensans matches 3.. run scoreboard players set @s dialoguetime 89
execute if score @s cr_beeninbattle matches 5.. run function ttt:act2/dialogueseqm2_with_rejectoffer
scoreboard players set @s dialogueseq -2