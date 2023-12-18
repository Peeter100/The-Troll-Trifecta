tp @s ~ ~0.25 ~
execute if entity @s[tag=firearrow] at @s run function ttt:fnf/arrow_firetick
execute if entity @s[tag=bfarrow] at @s unless block ~ ~1 ~ #ttt:passable if block ~ ~ ~ #ttt:passable run function ttt:fnf/note_miss
execute at @s unless block ~ ~1 ~ #ttt:passable if block ~ ~ ~ #ttt:passable run kill @s