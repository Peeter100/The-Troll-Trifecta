execute if score @s dialogueseq matches 0 run function ttt:act2/dialogueseq0_transitions

execute if score @s dialogueseq matches -3 run function ttt:act2/dialogue_tails_skip
execute if score @s dialogueseq matches -2 run function ttt:act2/dialogue_sans_skip
execute if score @s dialogueseq matches -1 run function ttt:act2/dialogue_quandale
execute if score @s dialogueseq matches 1 run function ttt:act2/dialogue_sans1