tellraw @a [{"text":"All Act 2 progress was reset by ","color":"red"},{"selector":"@s","color":"aqua"},{"text":"!","color":"red"}]
execute as @e[type=marker,tag=sv] run function ttt:lobby/reset_act2