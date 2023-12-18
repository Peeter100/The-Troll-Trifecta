# Runs per player that needs verification, as them at them
title @s actionbar {"text":"Complete the verification in the chat!","color":"green"}
execute if score @s ms_seqtimer matches 0.. run scoreboard players remove @s ms_seqtimer 1

execute if score @e[type=marker,tag=sv,limit=1] playing matches 0 unless entity @s[x=0,y=30,z=0,dx=0,dy=0,dz=0] run tp @s 0 30 0

execute if score @s ms_seqid matches 7..8 run function ttt:lobby/mpseq/parse_specific/compatibility/tick
execute if score @s ms_seqid matches 9 run function ttt:lobby/mpseq/parse_specific/item_questions/tick1
execute if score @s ms_seqid matches 10..11 run function ttt:lobby/mpseq/parse_specific/item_questions/tick2
execute if score @s ms_seqid matches 14 run function ttt:lobby/mpseq/parse_specific/item_questions/tick2

execute if score @s ms_seqtimer matches 0 run function ttt:lobby/mpseq/display_question
execute if score @s ms_seqtimer matches -1 run function ttt:lobby/mpseq/question_await