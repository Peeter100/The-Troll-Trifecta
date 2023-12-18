execute if score @e[type=marker,tag=sv,limit=1] knowsbname matches ..0 run tellraw @a [{"text":"<","color":"gray"},{"text":"???","color":"#331E44"},{"text":"> "},{"text":"One third.","color":"#331E44"}]
execute if score @e[type=marker,tag=sv,limit=1] knowsbname matches 1.. run tellraw @a [{"text":"<","color":"gray"},{"text":"Black","color":"#331E44"},{"text":"> "},{"text":"One third.","color":"#331E44"}]
execute as @a at @s run playsound custom.amogus.text master @s ~ ~ ~ 1000 0.5
schedule function ttt:amogus/stopsound_text 10t replace