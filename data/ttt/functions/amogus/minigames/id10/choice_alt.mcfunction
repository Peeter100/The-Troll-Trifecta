execute at @p[tag=amplayer] run playsound custom.t2s.markiplier.letsgo master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"Let's do this!","color":"#FF3232"}]
function ttt:amogus/minigames/id10/enable_fnaf_mapstart

stopsound @a master custom.t2s.mutahar.intro
scoreboard players reset @a Game_Choice