tag @e[tag=oppicker] remove oppicked
tag @e[tag=oppicker,limit=1,sort=random] add oppicked

tag @e[tag=numpicker,tag=!numpicked4,limit=1,sort=random] add numpicked4
execute if entity @e[tag=numpicked4,tag=num1] run scoreboard players set @s am_gamescore4 1
execute if entity @e[tag=numpicked4,tag=num2] run scoreboard players set @s am_gamescore4 2
execute if entity @e[tag=numpicked4,tag=num3] run scoreboard players set @s am_gamescore4 3
execute if entity @e[tag=numpicked4,tag=num4] run scoreboard players set @s am_gamescore4 4
execute if entity @e[tag=numpicked4,tag=num5] run scoreboard players set @s am_gamescore4 5
execute if entity @e[tag=numpicked4,tag=num6] run scoreboard players set @s am_gamescore4 6
execute if entity @e[tag=numpicked4,tag=num7] run scoreboard players set @s am_gamescore4 7
execute if entity @e[tag=numpicked4,tag=num8] run scoreboard players set @s am_gamescore4 8
execute if entity @e[tag=numpicked4,tag=num9] run scoreboard players set @s am_gamescore4 9

execute if entity @e[tag=oppicked,tag=opminus] run scoreboard players operation @s am_gamescore4 *= @s am_gamescore7