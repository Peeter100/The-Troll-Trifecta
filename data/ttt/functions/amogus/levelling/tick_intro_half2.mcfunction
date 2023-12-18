execute if score @s dialoguetime matches 2001 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"Every time you get a kill, I will be judging.","color":"#331E44"}]
execute if score @s dialoguetime matches 2001 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 2001 run schedule function ttt:amogus/stopsound_text 50t replace

execute if score @s dialoguetime matches 2070 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"The sneakier the kill,","color":"#331E44"}]
execute if score @s dialoguetime matches 2070 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 2100 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"and the better getaway you'll have,","color":"#331E44"}]
execute if score @s dialoguetime matches 2100 run stopsound @a master custom.amogus.text
execute if score @s dialoguetime matches 2100 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 2100 run schedule function ttt:amogus/stopsound_text 80t replace
execute if score @s dialoguetime matches 2140 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"the more ","color":"#331E44"},{"text":"Impostor Experience (IXP)","color":"red"},{"text":" you will gain.","color":"#331E44"}]

execute if score @s dialoguetime matches 2200 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"The more Impostor Experience,","color":"#331E44"}]
execute if score @s dialoguetime matches 2200 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 2200 run schedule function ttt:amogus/stopsound_text 90t replace
execute if score @s dialoguetime matches 2230 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"the easier I can make the game for you.","color":"#331E44"}]

execute if score @s dialoguetime matches 2300 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"Less crewmates, faster kill cooldown...","color":"#331E44"}]
execute if score @s dialoguetime matches 2300 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 2300 run schedule function ttt:amogus/stopsound_text 70t replace
execute if score @s dialoguetime matches 2350 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"I can do a lot!","color":"#331E44"}]

execute if score @s dialoguetime matches 2380 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"Show me what you're made of.","color":"#331E44"}]
execute if score @s dialoguetime matches 2380 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000 0.5
execute if score @s dialoguetime matches 2380 run schedule function ttt:amogus/stopsound_text 50t replace

execute if score @s dialoguetime matches 2450 run scoreboard players set @s acttimer 2110
execute if score @s dialoguetime matches 2450 run scoreboard players set @s dialoguetime 0