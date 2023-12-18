scoreboard players set @s am_gametimer 1170
scoreboard players set @s am_gamescore5 1000
scoreboard players set @s am_beatfnaf 1
tp @e[type=chest_minecart,tag=linux] -24 0 97.55 90 0
stopsound @a master custom.act3.fnaf.ambience
schedule clear ttt:amogus/minigames/id10/play_ambience

setblock -23 22 98 barrier
setblock -25 22 98 barrier
setblock -24 22 99 barrier

execute at @p[tag=amplayer] run playsound custom.t2s.markiplier.goodjob master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"Good job!","color":"#FF3232"}]