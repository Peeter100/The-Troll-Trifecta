function ttt:amogus/minigames/id4/stopsound_baldi
execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.doors_double_lock master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"You need to collect 2 notebooks before you can use these doors!","color":"green"}]
tag @e[tag=baldi] add use_door2