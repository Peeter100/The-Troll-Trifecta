scoreboard players set @s am_gamescore5 5
clear @a[tag=amplayer] gold_ingot
kill @e[type=item]
execute at @r[tag=amplayer] run playsound custom.t2s.rick.am_good master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"This is really strong!","color":"aqua"}]
scoreboard players set @s am_gametimer 780