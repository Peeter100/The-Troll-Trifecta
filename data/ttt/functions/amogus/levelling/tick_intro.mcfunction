scoreboard players set @s acttimer 2109
scoreboard players add @s dialoguetime 1

#execute if entity @s[scores={acttimer=1920,actunlocked=4..}] run scoreboard players enable @a[tag=amplayer] Game_Choice
#execute if entity @s[scores={acttimer=1920,actunlocked=4..}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Any questions? ","color":"yellow"},{"color":"green","text":"[Start]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to start the game!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]

execute if score @s dialoguetime matches 10 run function ttt:amogus/levelling/intro_calculate_diamonds
execute if score @s dialoguetime matches ..2000 run function ttt:amogus/levelling/tick_intro_half1
execute if score @s dialoguetime matches 2001.. if score @s dseq matches ..1 run function ttt:amogus/levelling/tick_intro_half2
execute if score @s dialoguetime matches 2001.. if score @s dseq matches 2.. run function ttt:amogus/levelling/tick_intro_half2_named

#execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run scoreboard players set @s acttimer 2100
#execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run scoreboard players reset @a Game_Choice