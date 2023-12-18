scoreboard players operation @s am_visualizer = @s am_sabcool
scoreboard players operation @s am_visualizer /= @s am_secondworth
execute unless entity @s[scores={am_sabcool=0}] run scoreboard players add @s am_visualizer 1

scoreboard players operation @s am_gamescore1 = @s am_killcool
scoreboard players operation @s am_gamescore1 /= @s am_secondworth
execute unless entity @s[scores={am_killcool=0}] run scoreboard players add @s am_gamescore1 1

execute unless entity @s[scores={am_sabid=1..3}] run bossbar set minecraft:amogbar name [{"text":"\uE003 ","color":"white"},{"score":{"name":"@s","objective":"am_gamescore1"},"color":"yellow"},{"text":"s  ","color":"yellow"},{"text":"Time for a Task remaining:  ","color":"red"},{"text":"\uE004 ","color":"white"},{"score":{"name":"@s","objective":"am_visualizer"},"color":"yellow"},{"text":"s","color":"yellow"}]
execute if entity @s[scores={am_sabid=1..3}] run bossbar set minecraft:amogbar name [{"text":"\uE003 ","color":"white"},{"score":{"name":"@s","objective":"am_gamescore1"},"color":"yellow"},{"text":"s  ","color":"yellow"},{"text":"Time for a Task remaining:  ","color":"red"},{"text":"\uE004 ","color":"white"},{"text":"--s","color":"yellow"}]