execute store success score @s ms_seqval if predicate ttt:debug
execute if score @s ms_seqval matches 1 run tellraw @s [{"text":"Predicates: "},{"text":"Working","color":"green"}]
execute if score @s ms_seqval matches 0 run tellraw @s [{"text":"Predicates: "},{"text":"Unsupported/Incompatible","color":"red"}]
execute if score @s ms_seqval matches 0 run scoreboard players set @s ms_seqid 54