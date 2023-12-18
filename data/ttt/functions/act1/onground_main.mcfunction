execute if block ~ ~-0.1 ~ magma_block run function ttt:act1/magma_death
execute if block ~ ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute if block ~ ~-0.1 ~-0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute if block ~0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute if block ~-0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute if block ~-0.3 ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death

execute if block ~ ~-0.1 ~-0.3 magenta_glazed_terracotta[facing=north] unless block ~ ~-0.1 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.25
execute if block ~ ~-0.1 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.25