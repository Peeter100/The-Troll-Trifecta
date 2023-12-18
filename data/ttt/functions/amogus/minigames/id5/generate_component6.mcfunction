tag @e[tag=oppicker] remove oppicked
tag @e[tag=oppicker,limit=1,sort=random] add oppicked

tag @e[tag=numpicker,tag=!numpicked4,tag=!numpicked5,tag=!numpicked6,limit=1,sort=random] add numpicked6
execute if entity @e[tag=numpicked6,tag=num1] run scoreboard players set @s am_gamescore6 1
execute if entity @e[tag=numpicked6,tag=num2] run scoreboard players set @s am_gamescore6 2
execute if entity @e[tag=numpicked6,tag=num3] run scoreboard players set @s am_gamescore6 3
execute if entity @e[tag=numpicked6,tag=num4] run scoreboard players set @s am_gamescore6 4
execute if entity @e[tag=numpicked6,tag=num5] run scoreboard players set @s am_gamescore6 5
execute if entity @e[tag=numpicked6,tag=num6] run scoreboard players set @s am_gamescore6 6
execute if entity @e[tag=numpicked6,tag=num7] run scoreboard players set @s am_gamescore6 7
execute if entity @e[tag=numpicked6,tag=num8] run scoreboard players set @s am_gamescore6 8
execute if entity @e[tag=numpicked6,tag=num9] run scoreboard players set @s am_gamescore6 9

execute if entity @e[tag=oppicked,tag=opminus] run scoreboard players operation @s am_gamescore6 *= @s am_gamescore7