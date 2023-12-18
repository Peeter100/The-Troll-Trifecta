scoreboard players add @s am_gamescore3 1
stopsound @a master

execute if score @s am_gamescore3 matches 1 at @r[tag=amplayer] run playsound custom.t2s.rick.am_ask1 master @a ~ ~ ~ 1000
execute if score @s am_gamescore3 matches 1 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"I don't care.","color":"aqua"}]

execute if score @s am_gamescore3 matches 2 at @r[tag=amplayer] run playsound custom.t2s.rick.am_ask2 master @a ~ ~ ~ 1000
execute if score @s am_gamescore3 matches 2 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"I don't know anything about this world!","color":"aqua"}]
execute if score @s am_gamescore3 matches 2 run scoreboard players set @s am_gametimer 240

scoreboard players reset @a Game_Choice
execute if score @s am_gamescore3 matches 1 run scoreboard players enable @a[tag=amplayer] Game_Choice
#execute if score @s am_gamescore3 matches ..2 run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if score @s am_gamescore3 matches 3.. as @p[tag=amplayer] at @s run function ttt:amogus/minigames/id12/angryrick