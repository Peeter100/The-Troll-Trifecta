# Fancy cooldown logic here
execute if entity @e[type=marker,tag=giftlimit,limit=1] run title @s actionbar {"text":"Gifts are still on cooldown!","color":"red"}
execute unless entity @e[type=marker,tag=giftlimit,limit=1] run function ttt:xmas/gift_use