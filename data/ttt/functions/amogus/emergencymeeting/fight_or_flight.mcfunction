# Pog OST?
scoreboard players enable @a[tag=amplayer] Game_Choice
tellraw @a [{"text":"[Fight]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to question accusations!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}},{"text":" "},{"text":"[Surrender]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to make a YouTuber apology!","color":"red","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 2"}}]