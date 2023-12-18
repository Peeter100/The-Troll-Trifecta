scoreboard players set @s am_gamescore5 1
stopsound @a master

execute at @r[tag=amplayer] run playsound custom.t2s.waltuh.am_price master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"That'll be $420.","color":"#FFA159"}]
scoreboard players set @s am_gametimer 730