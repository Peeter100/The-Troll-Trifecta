scoreboard players set @e[type=marker,tag=sv] am_gamescore1 1

# execute if score @s x > @e[type=marker,tag=sv,limit=1] am_gamescore2 align xz unless block ~1.5 ~ ~.5 barrier run tp @s ~1.5 ~ ~.5
# execute if score @s x < @e[type=marker,tag=sv,limit=1] am_gamescore2 align xz unless block ~-0.5 ~ ~.5 barrier run tp @s ~-0.5 ~ ~.5
# execute if score @s z > @e[type=marker,tag=sv,limit=1] am_gamescore3 align xz unless block ~.5 ~ ~1.5 barrier run tp @s ~.5 ~ ~1.5
# execute if score @s z < @e[type=marker,tag=sv,limit=1] am_gamescore3 align xz unless block ~.5 ~ ~-0.5 barrier run tp @s ~.5 ~ ~-0.5

execute if score @s x > @e[type=marker,tag=sv,limit=1] am_gamescore2 align xz positioned ~1.5 ~ ~.5 if block ~ ~ ~ #ttt:passable unless block ~ ~ ~ barrier run function ttt:amogus/minigames/id11/block_slip_teleport
execute if score @s x < @e[type=marker,tag=sv,limit=1] am_gamescore2 align xz positioned ~-0.5 ~ ~.5 if block ~ ~ ~ #ttt:passable unless block ~ ~ ~ barrier run function ttt:amogus/minigames/id11/block_slip_teleport
execute if score @s z > @e[type=marker,tag=sv,limit=1] am_gamescore3 align xz positioned ~.5 ~ ~1.5 if block ~ ~ ~ #ttt:passable unless block ~ ~ ~ barrier run function ttt:amogus/minigames/id11/block_slip_teleport
execute if score @s z < @e[type=marker,tag=sv,limit=1] am_gamescore3 align xz positioned ~.5 ~ ~-0.5 if block ~ ~ ~ #ttt:passable unless block ~ ~ ~ barrier run function ttt:amogus/minigames/id11/block_slip_teleport