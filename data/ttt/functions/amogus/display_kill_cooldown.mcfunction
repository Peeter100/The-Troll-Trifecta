scoreboard players operation @s am_visualizer = @s am_killcool
scoreboard players operation @s am_visualizer /= @s am_secondworth
scoreboard players add @s am_visualizer 1
tellraw @a [{"text":"You can't kill anyone for the next ","color":"red","italic":false},{"score":{"name":"@s","objective":"am_visualizer"}},{"text":"s!"}]