execute if block ~ -22 ~ magenta_glazed_terracotta[facing=north] unless block ~ ~ ~0.5 iron_block run tp @s ~ ~ ~0.21 0 0
execute if block ~ -22 ~ magenta_glazed_terracotta[facing=south] unless block ~ ~ ~-0.5 iron_block run tp @s ~ ~ ~-0.21 180 0
execute if block ~ -22 ~ magenta_glazed_terracotta[facing=east] unless block ~-0.5 ~ ~ iron_block run tp @s ~-0.21 ~ ~ 90 0
execute if block ~ -22 ~ magenta_glazed_terracotta[facing=west] unless block ~0.5 ~ ~ iron_block run tp @s ~0.21 ~ ~ -90 0

execute if block ~ -22 ~ gold_block run function ttt:amogus/ai/player/call_emergency