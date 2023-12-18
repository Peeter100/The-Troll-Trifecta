execute if score @s dialoguetime matches 10 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"That last game was... disappointing.","color":"#331E44"}]
execute if score @s dialoguetime matches 10 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 10 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 70 run tellraw @a [{"text":"<","color":"white"},{"selector":"@r[tag=amplayer]","color":"aqua"},{"text":"> "},{"text":"Who are you?","color":"aqua"}]

execute if score @s dialoguetime matches 120 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"You haven't been looking for the ","color":"#331E44"},{"text":"diamonds","color":"aqua"},{"text":",","color":"#331E44"}]
execute if score @s dialoguetime matches 120 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 180 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"so there's no need for me to answer that.","color":"#331E44"}]
execute if score @s dialoguetime matches 180 run stopsound @a master custom.amogus.text
execute if score @s dialoguetime matches 180 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 180 run schedule function ttt:amogus/stopsound_text 40t replace

execute if score @s dialoguetime matches 240 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"Let's cut this short.","color":"#331E44"}]
execute if score @s dialoguetime matches 240 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 240 run schedule function ttt:amogus/stopsound_text 15t replace

execute if score @s dialoguetime matches 270 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"You can tell we're in a time loop, correct?","color":"#331E44"}]
execute if score @s dialoguetime matches 270 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 340 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"That means you might have potential.","color":"#331E44"}]
execute if score @s dialoguetime matches 340 run stopsound @a master custom.amogus.text
execute if score @s dialoguetime matches 340 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 340 run schedule function ttt:amogus/stopsound_text 40t replace
execute if score @s dialoguetime matches 400 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"I want to see it.","color":"#331E44"}]
execute if score @s dialoguetime matches 400 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 400 run schedule function ttt:amogus/stopsound_text 15t replace

execute if score @s dialoguetime matches 450 run scoreboard players set @s dialoguetime 2001