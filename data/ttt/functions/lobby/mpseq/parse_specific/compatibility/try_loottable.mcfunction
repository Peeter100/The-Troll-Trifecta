execute store result score @s ms_seqval run loot spawn 0 35 0 loot ttt:debug
execute if score @s ms_seqval matches 1 run tellraw @s [{"text":"Loot tables: "},{"text":"Working","color":"green"}]
execute if score @s ms_seqval matches 0 run tellraw @s [{"text":"Loot tables: "},{"text":"Unsupported/Incompatible","color":"red"}]
execute if score @s ms_seqval matches 0 run scoreboard players set @s ms_seqid 8