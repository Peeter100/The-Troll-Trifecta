gamemode spectator @s
scoreboard players set @s ready 0
clear @s carrot_on_a_stick
tellraw @s [{"text":">> You can now freely fly around the map!\nClick ","color":"yellow"},{"text":"[here]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport back to the Cheats section!","color":"yellow","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Lobby_Trigger set 25"}},{"text":" or fly back to the Cheats section to go back into Adventure Mode!"}]
scoreboard players enable @s Lobby_Trigger