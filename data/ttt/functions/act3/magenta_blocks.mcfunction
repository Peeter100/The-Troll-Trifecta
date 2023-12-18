#playsound custom.generic.lol_instant master @a ~ ~ ~ 1000
#tag @e[type=marker,tag=sv] add globalmsg1

#execute if entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_x
#execute if entity @s[y_rotation=-45..45] run function ttt:act3/magenta_blocks_z
#execute if entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_mx
#execute if entity @s[y_rotation=135..-135] run function ttt:act3/magenta_blocks_mz

#execute if block ~ 29 ~ magenta_glazed_terracotta run setblock ~ 35 ~ anvil

# z
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta rotated 0 0 unless entity @s[y_rotation=-45..45] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta rotated 0 0 unless entity @s[y_rotation=-45..45] run function ttt:act3/magenta_blocks_tp
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta rotated 0 0 unless entity @s[y_rotation=-45..45] run function ttt:act3/magenta_blocks_tp
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta rotated 0 0 unless entity @s[y_rotation=-45..45] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=north] rotated 0 0 unless entity @s[y_rotation=-45..45] run function ttt:act3/magenta_blocks_tp

# mz
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta rotated 180 0 unless entity @s[y_rotation=135..-135] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta rotated 180 0 unless entity @s[y_rotation=135..-135] run function ttt:act3/magenta_blocks_tp
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta rotated 180 0 unless entity @s[y_rotation=135..-135] run function ttt:act3/magenta_blocks_tp
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta rotated 180 0 unless entity @s[y_rotation=135..-135] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=south] rotated 180 0 unless entity @s[y_rotation=135..-135] run function ttt:act3/magenta_blocks_tp

# mx
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta rotated 90 0 unless entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_tp
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta rotated 90 0 unless entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta rotated 90 0 unless entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta rotated 90 0 unless entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=east] rotated 90 0 unless entity @s[y_rotation=45..135] run function ttt:act3/magenta_blocks_tp

# x
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta rotated -90 0 unless entity @s[y_rotation=-135..-45] run function ttt:act3/magenta_blocks_tp
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta rotated -90 0 unless entity @s[y_rotation=-135..-45] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta rotated -90 0 unless entity @s[y_rotation=-135..-45] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta rotated -90 0 unless entity @s[y_rotation=-135..-45] run function ttt:act3/magenta_blocks_tp
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=west] rotated -90 0 unless entity @s[y_rotation=-135..-45] run function ttt:act3/magenta_blocks_tp