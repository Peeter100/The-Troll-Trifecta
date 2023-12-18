scoreboard players operation @s am_visualizer = @s am_sabcool
scoreboard players operation @s am_visualizer /= @s am_secondworth
scoreboard players add @s am_visualizer 1
tellraw @a [{"text":"Crisis Sabotages are still on a ","color":"red","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s cooldown!"}]