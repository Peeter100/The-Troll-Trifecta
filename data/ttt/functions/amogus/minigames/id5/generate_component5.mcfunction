tag @e[tag=oppicker] remove oppicked
tag @e[tag=oppicker,limit=1,sort=random] add oppicked

tag @e[tag=numpicker,tag=!numpicked4,tag=!numpicked5,limit=1,sort=random] add numpicked5
execute if entity @e[tag=numpicked5,tag=num1] run scoreboard players set @s am_gamescore5 1
execute if entity @e[tag=numpicked5,tag=num2] run scoreboard players set @s am_gamescore5 2
execute if entity @e[tag=numpicked5,tag=num3] run scoreboard players set @s am_gamescore5 3
execute if entity @e[tag=numpicked5,tag=num4] run scoreboard players set @s am_gamescore5 4
execute if entity @e[tag=numpicked5,tag=num5] run scoreboard players set @s am_gamescore5 5
execute if entity @e[tag=numpicked5,tag=num6] run scoreboard players set @s am_gamescore5 6
execute if entity @e[tag=numpicked5,tag=num7] run scoreboard players set @s am_gamescore5 7
execute if entity @e[tag=numpicked5,tag=num8] run scoreboard players set @s am_gamescore5 8
execute if entity @e[tag=numpicked5,tag=num9] run scoreboard players set @s am_gamescore5 9

execute if entity @e[tag=oppicked,tag=opminus] run scoreboard players operation @s am_gamescore5 *= @s am_gamescore7