scoreboard players set @s am_gamescore2 6
scoreboard players set @s am_gamescore3 -6
scoreboard players set @s am_gamescore7 0
scoreboard players set @a[tag=amplayer] Baldi_Answer -32787
tag @e[tag=numpicker] remove numpicked4
tag @e[tag=numpicker] remove numpicked5
tag @e[tag=numpicker] remove numpicked6

execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.baldi_math_stage7 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Problem 7!","color":"green"},{"text":"\nFind all possible values of x.","color":"light_purple"}]
scoreboard players enable @a[tag=amplayer] Baldi_Answer

tellraw @a [{"text":"2(x-6)(x+3) = -6x+x\uE005","color":"yellow"}]

tellraw @a [{"text":"Provide the answer by using the\n","color":"light_purple"},{"text":"/trigger Baldi_Answer set VALUE","bold":true},{"text":" command\nor to get the command directly in chat click "},{"text":"[HERE]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"yellow","italic":false}]},"clickEvent":{"action":"suggest_command","value":"/trigger Baldi_Answer set "}},{"text":"\n(run the command more than once to provide multiple answers)","color":"yellow"}]
scoreboard players set @s am_gamescore1 13