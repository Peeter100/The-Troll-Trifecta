scoreboard players operation @s am_visualizer = @s npcbodytp
scoreboard players operation @s am_visualizer /= @e[tag=sv,limit=1] am_secondworth
scoreboard players add @s am_visualizer 1
tellraw @a [{"text":"Doors to ","color":"red","italic":false},{"selector":"@s"},{"text":" still have a "},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s cooldown!"}]
scoreboard players reset @s am_visualizer