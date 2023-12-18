execute store result score @s shoes_ymotion run data get entity @s Motion[1] 10

execute if score @s shoes_ymotion matches ..9 run function ttt:act2/tails_shoes_inair_standard
execute if score @s shoes_ymotion matches 10.. run function ttt:act2/tails_shoes_inair_highmotion

#function ttt:act2/tails_shoes_inair_standard