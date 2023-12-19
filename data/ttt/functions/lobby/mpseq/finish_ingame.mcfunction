playsound entity.player.levelup master @s ~ ~ ~ 1000
particle happy_villager ~ ~1 ~ 1 1 1 0 100 force @s
title @s reset
title @s clear
#title @s title {"text":"The Troll Trifecta","color":"yellow","bold":true}
title @s actionbar {"text":""}
scoreboard players set @s ms_seqid 0
scoreboard players set @s verified 2
tellraw @s {"text":"Verified!","color":"green"}