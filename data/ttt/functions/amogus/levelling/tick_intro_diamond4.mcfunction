execute if score @s dialoguetime matches 10 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"I am the Black Impostor.","color":"#331E44"}]
execute if score @s dialoguetime matches 10 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 10 run schedule function ttt:amogus/stopsound_text 40t replace
execute if score @s dialoguetime matches 10 run scoreboard players set @s[scores={knowsbname=..0}] knowsbname 1

execute if score @s dialoguetime matches 70 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"The ULTIMATE impostor with a PERFECT record to my name.","color":"#331E44"}]
execute if score @s dialoguetime matches 70 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 70 run schedule function ttt:amogus/stopsound_text 80t replace

execute if score @s dialoguetime matches 170 run scoreboard players set @s dialoguetime 2001