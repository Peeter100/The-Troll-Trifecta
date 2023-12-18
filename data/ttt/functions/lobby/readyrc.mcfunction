scoreboard players add @s ready 1
execute if score @s verified matches 2.. run function ttt:lobby/readyrc_normal
#execute if score @s verified matches ..1 run function ttt:lobby/readyrc_verify

clear @s carrot_on_a_stick{readyicon:1b}
execute if entity @s[scores={ready=2..}] run scoreboard players set @s ready 0