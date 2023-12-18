scoreboard players set @e[type=marker,tag=sv] dialoguetime 300
tag @e[type=marker,tag=amhost] remove blackoutnotify
tag @e[type=marker,tag=amhost] add blackoutdid

playsound custom.amogus.text master @a ~ ~ ~ 1000
execute if entity @s[tag=orange] run tellraw @a [{"text":"<","color":"white"},{"text":"Orange","color":"gold"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"gold"}]
execute if entity @s[tag=yellow] run tellraw @a [{"text":"<","color":"white"},{"text":"Yellow","color":"yellow"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"yellow"}]
execute if entity @s[tag=lime] run tellraw @a [{"text":"<","color":"white"},{"text":"Lime","color":"green"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"green"}]
execute if entity @s[tag=green] run tellraw @a [{"text":"<","color":"white"},{"text":"Green","color":"dark_green"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"dark_green"}]
execute if entity @s[tag=cyan] run tellraw @a [{"text":"<","color":"white"},{"text":"Cyan","color":"aqua"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"aqua"}]
execute if entity @s[tag=pink] run tellraw @a [{"text":"<","color":"white"},{"text":"Pink","color":"light_purple"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"light_purple"}]
execute if entity @s[tag=purple] run tellraw @a [{"text":"<","color":"white"},{"text":"Purple","color":"dark_purple"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"dark_purple"}]
execute if entity @s[tag=white] run tellraw @a [{"text":"<","color":"white"},{"text":"White","color":"white"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"white"}]
execute if entity @s[tag=black] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"blue"},{"text":"> ","color":"white"},{"text":"Remember that most kills happened during blackout!","color":"blue"}]