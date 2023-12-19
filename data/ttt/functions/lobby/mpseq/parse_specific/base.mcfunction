execute if score @s ms_seqid matches 31 run function ttt:lobby/mpseq/parse_specific/optifine_done
execute if score @s ms_seqid matches 32 run function ttt:lobby/mpseq/parse_specific/item_questions/fail_return
execute if score @s ms_seqid matches 3 if score @s Map_Setup matches 2 run function ttt:lobby/mpseq/parse_specific/version_wrong
execute if score @s ms_seqid matches 4 if score @s Map_Setup matches 1 run function ttt:lobby/mpseq/parse_specific/optifine
execute if score @s ms_seqid matches 6 if score @s Map_Setup matches 3 run function ttt:lobby/mpseq/parse_specific/compatibility/send
execute if score @s ms_seqid matches 7 if score @s Map_Setup matches 5..6 run function ttt:lobby/mpseq/parse_specific/compatibility/finish
execute if score @s ms_seqtimer matches -1 if score @s ms_seqid matches 9..11 run function ttt:lobby/mpseq/parse_specific/item_questions/fail
execute if score @s ms_seqid matches 12 run function ttt:lobby/mpseq/parse_specific/item_questions/retry_code
execute if score @s ms_seqid matches 15 run function ttt:lobby/mpseq/finish_lobby

execute if score @s ms_seqid matches 50 if score @s Map_Setup matches 2 run function ttt:lobby/mpseq/parse_specific/version_wrong
execute if score @s ms_seqid matches 51 if score @s Map_Setup matches 1 run function ttt:lobby/mpseq/parse_specific/optifine_alt
execute if score @s ms_seqid matches 52 run function ttt:lobby/mpseq/parse_specific/item_questions/retry_code_alt

execute if score @s ms_seqid matches 70 if score @s ms_seqtimer matches -1 run function ttt:lobby/mpseq/parse_specific/optifine_done_alt