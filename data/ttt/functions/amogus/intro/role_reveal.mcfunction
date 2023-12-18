playsound custom.amogus.role_reveal master @a 37 8 103 1000

execute if score @s am_played matches ..1 run tellraw @a [{"text":"You are an impostor!","color":"red"},{"text":" Kill all crewmates to win.","color":"white"}]
execute if score @s am_played matches 2.. run function ttt:amogus/intro/level_reveal

title @a title {"text":"Impostor","color":"red","bold":true}
title @a subtitle [{"text":"There is ","color":"white"},{"text":"1 Impostor","color":"red"},{"text":" among us"}]