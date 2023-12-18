scoreboard players add @s am_gamescore4 1
execute unless score @s am_gamescore2 = @p[tag=amplayer] x at @p[tag=amplayer] run function ttt:amogus/sabotage_o2_move
execute unless score @s am_gamescore3 = @p[tag=amplayer] z at @p[tag=amplayer] run function ttt:amogus/sabotage_o2_move
execute if score @s am_gamescore4 matches 10 run function ttt:amogus/distance/o2/measure_distance