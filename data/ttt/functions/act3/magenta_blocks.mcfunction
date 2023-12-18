playsound custom.generic.lol_instant master @a ~ ~ ~ 1000
tag @e[type=marker,tag=sv] add globalmsg1

execute if block ~ 29 ~ magenta_glazed_terracotta run setblock ~ 35 ~ anvil

execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~0.5
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~0.5
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~0.5
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~0.5
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.5

execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~-0.5
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~-0.5
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~-0.5
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~ ~ ~-0.5
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.5

execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~-0.5 ~ ~
execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~-0.5 ~ ~
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~-0.5 ~ ~
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~-0.5 ~ ~
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.5 ~ ~

execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~0.5 ~ ~
execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~0.5 ~ ~
execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~0.5 ~ ~
execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta run tp @s ~0.5 ~ ~
execute if block ~ 29 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.5 ~ ~



##execute if block ~ 29 ~0.3 magenta_glazed_terracotta[facing=north] unless block ~ 29 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.5
##execute if block ~ 29 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.5
##execute if block ~ 29 ~-0.3 magenta_glazed_terracotta[facing=south] unless block ~ 29 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.5
##execute if block ~ 29 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.5
##execute if block ~-0.3 29 ~ magenta_glazed_terracotta[facing=east] unless block ~ 29 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.5 ~ ~
##execute if block ~ 29 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.5 ~ ~
##execute if block ~0.3 29 ~ magenta_glazed_terracotta[facing=west] unless block ~ 29 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.5 ~ ~
##execute if block ~ 29 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.5 ~ ~