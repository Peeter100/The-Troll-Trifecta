scoreboard players enable @a[team=p] Game_Choice
execute if score @s fnf_seentails matches ..3 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I can help you if you'd like! ","color":"gold"},{"color":"green","text":"[Accept]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Tails' offer!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]