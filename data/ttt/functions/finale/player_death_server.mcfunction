scoreboard players add @s f3_deaths 1

execute unless entity @s[scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_bossdiff=1},tag=hasdiamonds] run scoreboard players add @s f3_bosshp 45
execute if score @s dialogueseq matches 2.. if score @s f3_bosshp > @s f3_healthmargin run scoreboard players operation @s f3_bosshp = @s f3_healthmargin
execute if score @s f3_bosshp > @s f3_healthmax run scoreboard players operation @s f3_bosshp = @s f3_healthmax
execute if score @s dialogueseq matches 1 store result entity 00000001-0000-0000-0000-000000000000 Health float 1 run scoreboard players get @s f3_bosshp

execute if score @s dialogueseq matches 1 unless entity @e[type=iron_golem,tag=shutthefuckup] run function ttt:finale/deathtip/manage_p1
execute if score @s dialogueseq matches 3 unless entity @e[type=iron_golem,tag=shutthefuckup] run function ttt:finale/deathtip/manage_p2