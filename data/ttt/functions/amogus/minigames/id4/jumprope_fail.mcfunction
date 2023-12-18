scoreboard players set @s am_gamescore6 0
scoreboard players set @s am_gametimer 425
function ttt:amogus/minigames/id4/stopsound_playtime

execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_fail master @a ~ ~ ~ 0.9
tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"OOPS!","color":"red"}]