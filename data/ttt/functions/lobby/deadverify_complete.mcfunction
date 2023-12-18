scoreboard players set @s verified 2
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1000
tellraw @s {"text":"Verified!","color":"green"}
scoreboard players reset @a Lobby_Trigger
title @a clear
title @a actionbar {"text":""}