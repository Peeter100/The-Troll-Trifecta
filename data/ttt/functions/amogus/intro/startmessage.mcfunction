execute if score @s am_played matches 1000.. run tag @s add powah
execute if score @s actunlocked matches 4.. run tag @s add powah

execute if score @s am_played matches 0 unless entity @s[tag=powah] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Welcome, contestants!","color":"yellow"}]

execute if score @s am_played matches 1.. unless entity @s[tag=powah] run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if score @s am_played matches 1.. unless entity @s[tag=powah] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Welcome, contestants! ","color":"yellow"},{"color":"green","text":"[Skip]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to start the game!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]

execute if entity @s[tag=powah] run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if entity @s[tag=powah] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Welcome, contestants! ","color":"yellow"},{"color":"green","text":"[Skip]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to start the game!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}},{"text":" "},{"color":"gold","text":"[Skip Among Us]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to skip the whole Among Us game!","color":"gold","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 2"}}]

execute at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000
tag @s remove powah