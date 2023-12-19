scoreboard players reset @s Map_Setup
scoreboard players enable @s Map_Setup
playsound block.note_block.pling master @s ~ ~ ~ 1000 2

execute if score @s ms_seqid matches ..19 run function ttt:lobby/mpseq/display_question_p1
execute if score @s ms_seqid matches 20.. run function ttt:lobby/mpseq/display_question_p2