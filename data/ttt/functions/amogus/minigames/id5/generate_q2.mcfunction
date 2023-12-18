scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore7 -1
scoreboard players set @a[tag=amplayer] Baldi_Answer -32787
tag @e[tag=numpicker] remove numpicked4
tag @e[tag=numpicker] remove numpicked5
tag @e[tag=numpicker] remove numpicked6
tag @e[tag=baldi] remove num5neg
tag @e[tag=baldi] remove num6neg

function ttt:amogus/minigames/id5/generate_component4
scoreboard players operation @s am_gamescore2 += @s am_gamescore4

function ttt:amogus/minigames/id5/generate_component5
scoreboard players operation @s am_gamescore2 += @s am_gamescore5

function ttt:amogus/minigames/id5/generate_component6
scoreboard players operation @s am_gamescore2 += @s am_gamescore6

execute unless entity @s[scores={am_gamescore2=0}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.baldi_math_stage2 master @a ~ ~ ~ 1000
execute unless entity @s[scores={am_gamescore2=0}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Problem 2!","color":"green"},{"text":"\nWhat is the answer to the following equation?","color":"light_purple"}]
execute unless entity @s[scores={am_gamescore2=0}] run scoreboard players enable @a[tag=amplayer] Baldi_Answer

execute unless entity @s[scores={am_gamescore2=0}] if entity @s[scores={am_gamescore5=..-1}] run tag @e[tag=baldi] add num5neg
execute unless entity @s[scores={am_gamescore2=0}] if entity @s[scores={am_gamescore6=..-1}] run tag @e[tag=baldi] add num6neg

execute unless entity @s[scores={am_gamescore2=0}] if entity @e[tag=baldi,tag=!num5neg,tag=!num6neg] run tellraw @a [{"score":{"name":"@s","objective":"am_gamescore4"},"color":"yellow"},{"text":" + "},{"score":{"name":"@s","objective":"am_gamescore5"}},{"text":" + "},{"score":{"name":"@s","objective":"am_gamescore6"}},{"text":" = ??"}]
execute unless entity @s[scores={am_gamescore2=0}] if entity @e[tag=baldi,tag=num5neg] run scoreboard players operation @s am_gamescore5 *= @s am_gamescore7
execute unless entity @s[scores={am_gamescore2=0}] if entity @e[tag=baldi,tag=num6neg] run scoreboard players operation @s am_gamescore6 *= @s am_gamescore7

execute unless entity @s[scores={am_gamescore2=0}] if entity @e[tag=baldi,tag=num5neg,tag=!num6neg] run tellraw @a [{"score":{"name":"@s","objective":"am_gamescore4"},"color":"yellow"},{"text":" - "},{"score":{"name":"@s","objective":"am_gamescore5"}},{"text":" + "},{"score":{"name":"@s","objective":"am_gamescore6"}},{"text":" = ??"}]
execute unless entity @s[scores={am_gamescore2=0}] if entity @e[tag=baldi,tag=!num5neg,tag=num6neg] run tellraw @a [{"score":{"name":"@s","objective":"am_gamescore4"},"color":"yellow"},{"text":" + "},{"score":{"name":"@s","objective":"am_gamescore5"}},{"text":" - "},{"score":{"name":"@s","objective":"am_gamescore6"}},{"text":" = ??"}]
execute unless entity @s[scores={am_gamescore2=0}] if entity @e[tag=baldi,tag=num5neg,tag=num6neg] run tellraw @a [{"score":{"name":"@s","objective":"am_gamescore4"},"color":"yellow"},{"text":" - "},{"score":{"name":"@s","objective":"am_gamescore5"}},{"text":" - "},{"score":{"name":"@s","objective":"am_gamescore6"}},{"text":" = ??"}]

execute unless entity @s[scores={am_gamescore2=0}] run tellraw @a [{"text":"Provide the answer by using the\n","color":"light_purple"},{"text":"/trigger Baldi_Answer set VALUE","bold":true},{"text":" command\nor to get the command directly in chat click "},{"text":"[HERE]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"yellow","italic":false}]},"clickEvent":{"action":"suggest_command","value":"/trigger Baldi_Answer set "}}]
execute unless entity @s[scores={am_gamescore2=0}] run scoreboard players set @s am_gamescore1 3