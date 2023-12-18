execute if score @s dialoguetime matches 10 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"That last game was... disappointing.","color":"#331E44"}]
execute if score @s dialoguetime matches 10 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 10 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 70 run tellraw @a [{"text":"<","color":"white"},{"selector":"@r[tag=amplayer]","color":"aqua"},{"text":"> "},{"text":"Who are you?","color":"aqua"}]

execute if score @s dialoguetime matches 120 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"You've been paying attention.","color":"#331E44"}]
execute if score @s dialoguetime matches 120 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 120 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 180 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"You are aware of the time loop.","color":"#331E44"}]
execute if score @s dialoguetime matches 180 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 180 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 240 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"You have lots of potential.","color":"#331E44"}]
execute if score @s dialoguetime matches 240 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 240 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 300 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"I am the Black Impostor.","color":"#331E44"}]
execute if score @s dialoguetime matches 300 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 300 run schedule function ttt:amogus/stopsound_text 40t replace
execute if score @s dialoguetime matches 300 run scoreboard players set @s[scores={knowsbname=..0}] knowsbname 1

execute if score @s dialoguetime matches 360 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"The ULTIMATE impostor with a PERFECT record to my name.","color":"#331E44"}]
execute if score @s dialoguetime matches 360 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 360 run schedule function ttt:amogus/stopsound_text 80t replace

execute if score @s dialoguetime matches 460 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"My physical body is stuck in a place I cannot freely leave.","color":"#331E44"}]
execute if score @s dialoguetime matches 460 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 460 run schedule function ttt:amogus/stopsound_text 80t replace

execute if score @s dialoguetime matches 560 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"And I think you're my ticket to getting out of here.","color":"#331E44"}]
execute if score @s dialoguetime matches 560 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 560 run schedule function ttt:amogus/stopsound_text 70t replace

execute if score @s dialoguetime matches 640 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"Not without a reward of course!","color":"#331E44"}]
execute if score @s dialoguetime matches 640 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 640 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 700 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"Look for the ","color":"#331E44"},{"text":"diamonds","color":"aqua"},{"text":".","color":"#331E44"}]
execute if score @s dialoguetime matches 700 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 700 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 750 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"Help me solve this mystery.","color":"#331E44"}]
execute if score @s dialoguetime matches 750 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 750 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 800 run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"And to make it easier...","color":"#331E44"}]
execute if score @s dialoguetime matches 800 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 800 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 850 run scoreboard players set @s dialoguetime 2001