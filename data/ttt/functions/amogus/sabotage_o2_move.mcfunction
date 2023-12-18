# Fires as server at player when they move
# -16 o2 admin
# -19 o2 o2

#execute if score @p[tag=amplayer] x > @s am_gamescore2 align xz if block ~-0.5 -12 ~.5 magenta_glazed_terracotta[facing=east] run function ttt:amogus/distance/o2/measure_distance
#execute if score @p[tag=amplayer] x < @s am_gamescore2 align xz if block ~1.5 -12 ~.5 magenta_glazed_terracotta[facing=west] run function ttt:amogus/distance/o2/measure_distance
#execute if score @p[tag=amplayer] z > @s am_gamescore3 align xz if block ~.5 -12 ~-0.5 magenta_glazed_terracotta[facing=south] run function ttt:amogus/distance/o2/measure_distance
#execute if score @p[tag=amplayer] z < @s am_gamescore3 align xz if block ~.5 -12 ~1.5 magenta_glazed_terracotta[facing=north] run function ttt:amogus/distance/o2/measure_distance

# this is NOT optimized
execute if score @p[tag=amplayer] x > @s am_gamescore2 align xz unless block ~-0.5 -16 ~.5 magenta_glazed_terracotta[facing=west] unless block ~-0.5 -19 ~.5 magenta_glazed_terracotta[facing=west] run function ttt:amogus/distance/o2/measure_distance
execute if score @p[tag=amplayer] x < @s am_gamescore2 align xz unless block ~1.5 -16 ~.5 magenta_glazed_terracotta[facing=east] unless block ~1.5 -19 ~.5 magenta_glazed_terracotta[facing=east] run function ttt:amogus/distance/o2/measure_distance
execute if score @p[tag=amplayer] z > @s am_gamescore3 align xz unless block ~.5 -16 ~-0.5 magenta_glazed_terracotta[facing=north] unless block ~.5 -19 ~-0.5 magenta_glazed_terracotta[facing=north] run function ttt:amogus/distance/o2/measure_distance
execute if score @p[tag=amplayer] z < @s am_gamescore3 align xz unless block ~.5 -16 ~1.5 magenta_glazed_terracotta[facing=south] unless block ~.5 -19 ~1.5 magenta_glazed_terracotta[facing=south] run function ttt:amogus/distance/o2/measure_distance

scoreboard players operation @s am_gamescore2 = @p[tag=amplayer] x
scoreboard players operation @s am_gamescore3 = @p[tag=amplayer] z
scoreboard players set @s am_gamescore4 0