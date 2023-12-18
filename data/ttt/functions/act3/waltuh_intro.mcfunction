playsound custom.t2s.waltuh.my_name_is master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Walter White","color":"#FFA159"},{"text":"> "},{"text":"My name is Walter Hartwell White.","color":"#FFA159"}]
tag @s add talkedto
execute if entity @e[type=marker,tag=sv,scores={am_rickinteract=0}] run schedule function ttt:act3/rain_items_helptext 30t replace