scoreboard players set @s am_gamescore5 5
clear @a[tag=amplayer] gold_ingot
kill @e[type=item]
execute at @r[tag=amplayer] run playsound custom.t2s.rick.am_bad master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"This is terrible!","color":"aqua"}]
execute as @r[tag=amplayer] at @s run function ttt:amogus/minigames/id12/angryrick
schedule function ttt:amogus/minigames/id12/rick_moremsg 17t replace