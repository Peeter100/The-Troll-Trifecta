execute if block ~ 21 ~ orange_concrete run scoreboard players set @e[type=marker,tag=sv] am_gamescore1 2
execute if block ~ 21 ~ yellow_concrete run function ttt:amogus/minigames/id11/block_electrocute
execute if block ~ 21 ~ purple_concrete run function ttt:amogus/minigames/id11/block_slip
execute unless block ~ 21 ~ purple_concrete run effect clear @s slowness
execute if block ~ 21 ~ water run function ttt:amogus/minigames/id11/block_water
execute if block ~ 21 ~ green_concrete run function ttt:amogus/minigames/id11/block_monster

scoreboard players operation @e[type=marker,tag=sv,limit=1] am_gamescore2 = @s x
scoreboard players operation @e[type=marker,tag=sv,limit=1] am_gamescore3 = @s z