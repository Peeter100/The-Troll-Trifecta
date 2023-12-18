tellraw @s [{"text":"*Tails is busy researching on his Miles Electric*","color":"gold"}]
tag @s add tailstext
#execute as @e[type=marker,tag=sv] unless score @s dialogueseq matches 3 if score @s fnf_seentails matches 5.. run function ttt:act1/dialogueseq3