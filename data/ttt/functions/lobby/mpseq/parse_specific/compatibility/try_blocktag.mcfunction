execute store success score @s ms_seqval if block 0 30 0 #ttt:passable
execute if score @s ms_seqval matches 1 run tellraw @s [{"text":"Tags: "},{"text":"Working","color":"green"}]
execute if score @s ms_seqval matches 0 run tellraw @s [{"text":"Tags: "},{"text":"Unsupported/Incompatible","color":"red"}]
execute if score @s ms_seqval matches 0 run scoreboard players set @s ms_seqid 8