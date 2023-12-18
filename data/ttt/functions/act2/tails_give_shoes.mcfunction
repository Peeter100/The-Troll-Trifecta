stopsound @a master custom.t2s.tails.wand_shoes_ask
playsound custom.t2s.tails.wand_shoes_result master @a ~ ~ ~ 1000
#execute unless score @s totalcount matches 1 run tellraw @a [{"text":"WARNING:","color":"red","bold":true},{"text":" Tails' Shoes have a high chance of breaking on multiplayer! Don't jump instantly after landing on the ground!","bold":false}]
tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"They seem to work!","color":"gold"}]
scoreboard players set @s dialoguetime 560
scoreboard players set @s cr_seentails 3