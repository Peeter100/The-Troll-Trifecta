tellraw @a [{"text":"All progress was reset by ","color":"red"},{"selector":"@s","color":"aqua"},{"text":"!","color":"red"}]
execute as @e[type=marker,tag=sv] run function ttt:lobby/reset_act1
execute as @e[type=marker,tag=sv] run function ttt:lobby/reset_act2
execute as @e[type=marker,tag=sv] run function ttt:lobby/reset_act3
execute as @e[type=marker,tag=sv] run function ttt:lobby/reset_among