scoreboard players add @s am_gamescore1 1
scoreboard players set @s am_gamescore4 16
title @a times 0 40 0

execute if entity @s[scores={am_gamescore1=1}] run scoreboard players set @s am_gamescore2 330
execute if entity @s[scores={am_gamescore1=1}] run execute as @e[tag=toad,limit=1] at @s run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore1=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"I'd like some cake, please!","color":"red"}]

execute if entity @s[scores={am_gamescore1=2}] run scoreboard players set @s am_gamescore2 364
execute if entity @s[scores={am_gamescore1=2}] run execute as @e[tag=shadow,limit=1] at @s run playsound custom.t2s.shadow.cafeteria_order master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore1=2}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"I'd like a gun.","color":"#C42626"}]

execute if entity @s[scores={am_gamescore1=3}] run scoreboard players set @s am_gamescore2 605
execute if entity @s[scores={am_gamescore1=3}] run execute as @e[tag=smoke,limit=1] at @s run playsound custom.t2s.smoke.cafeteria_order master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore1=3}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"I'll have two Number 9s...","color":"#004406"}]

execute if entity @s[scores={am_gamescore1=4}] run scoreboard players set @s am_gamescore2 330
execute if entity @s[scores={am_gamescore1=4}] run execute as @e[tag=bf,limit=1] at @s run playsound custom.fnf.speech.bf master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore1=4}] run tellraw @a [{"text":"<","color":"white"},{"text":"Boyfriend","color":"aqua"},{"text":"> "},{"text":"Beep boo ba!","color":"aqua"}]