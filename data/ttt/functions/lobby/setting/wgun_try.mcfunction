execute unless entity @s[tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1}] run tellraw @p [{"text":"You can't modify this setting!","color":"red"}]
execute if entity @s[tag=hasdiamonds,scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1}] run function ttt:lobby/setting/wgun