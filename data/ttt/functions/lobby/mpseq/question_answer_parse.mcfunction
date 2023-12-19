execute if score @s ms_seqid matches 1..3 if score @s Map_Setup matches 1 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 4..5 if score @s Map_Setup matches 2 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 9 if score @s Map_Setup matches 11 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 10..11 if score @s Map_Setup matches 10 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 12 if score @s Map_Setup matches 2801 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 13..14 if score @s Map_Setup matches 1 run function ttt:lobby/mpseq/question_answer_success

execute if score @s ms_seqid matches 50 if score @s Map_Setup matches 1 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 51 if score @s Map_Setup matches 2 run function ttt:lobby/mpseq/question_answer_success
execute if score @s ms_seqid matches 52 if score @s Map_Setup matches 1035 run function ttt:lobby/mpseq/parse_specific/compatibility_ingame/send

execute unless entity @s[tag=parsed_ms] run function ttt:lobby/mpseq/parse_specific/base

clear @s
playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000
scoreboard players reset @s Map_Setup
tag @s remove parsed_ms