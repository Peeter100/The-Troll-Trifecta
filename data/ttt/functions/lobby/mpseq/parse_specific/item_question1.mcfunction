tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"What does the item your inventory look like?","color":"yellow"},{"text":"\nYour answer: ","color":"green"},{"color":"green","text":"[Gold Ingot]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 10"}},{"text":" "},{"color":"green","text":"[Medal]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 11"}},{"text":" "},{"color":"green","text":"[Vase]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 12"}},{"text":" "},{"color":"green","text":"[Diamond]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 13"}}]
give @s gold_ingot{display:{Name:'{"text":"Test Item","color":"white","italic":false}'},CustomModelData:1,locked:1b,questionitem:1b} 1