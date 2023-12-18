execute if score @s ms_seqtimer matches 60 run function ttt:lobby/mpseq/parse_specific/compatibility/info 
execute if score @s ms_seqtimer matches 20 run function ttt:lobby/mpseq/parse_specific/compatibility/try_blocktag
execute if score @s ms_seqtimer matches 15 run function ttt:lobby/mpseq/parse_specific/compatibility/try_loottable
execute if score @s ms_seqtimer matches 10 run function ttt:lobby/mpseq/parse_specific/compatibility/try_predicate
execute if score @s ms_seqtimer matches 0 if score @s ms_seqid matches 7 run tellraw @s {"text":"All good.","color":"yellow","italic":true}