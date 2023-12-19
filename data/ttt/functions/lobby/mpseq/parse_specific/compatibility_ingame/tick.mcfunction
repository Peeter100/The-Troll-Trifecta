execute if score @s ms_seqtimer matches 50 run function ttt:lobby/mpseq/parse_specific/compatibility/info 
execute if score @s ms_seqtimer matches 25 run function ttt:lobby/mpseq/parse_specific/compatibility_ingame/try_blocktag
execute if score @s ms_seqtimer matches 20 run function ttt:lobby/mpseq/parse_specific/compatibility_ingame/try_loottable
execute if score @s ms_seqtimer matches 15 run function ttt:lobby/mpseq/parse_specific/compatibility_ingame/try_predicate
execute if score @s ms_seqtimer matches 5 if score @s ms_seqid matches 53 run function ttt:lobby/mpseq/finish_ingame