execute if score @s Lobby_Trigger matches 1 if score @s verified matches 1 run function ttt:lobby/player_trigger/verify
execute if score @s Lobby_Trigger matches 11..19 run function ttt:lobby/player_trigger/reset_base
execute if score @s Lobby_Trigger matches 25 if entity @s[gamemode=!adventure] run function ttt:lobby/player_trigger/attempt_adventure

scoreboard players reset @s Lobby_Trigger
scoreboard players enable @s Lobby_Trigger