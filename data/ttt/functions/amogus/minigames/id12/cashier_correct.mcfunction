scoreboard players set @s am_gamescore5 1
stopsound @a master

execute if score @s am_ricktask matches ..1 run scoreboard players set @s am_gametimer 310
execute if score @s am_ricktask matches ..1 at @r[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000
execute if score @s am_ricktask matches ..1 run tellraw @a [{"text":"<","color":"white"},{"text":"Red (You)","color":"red"},{"text":"> "},{"text":"What drink do you recommend?","color":"red"}]

execute if score @s am_ricktask matches 2.. run scoreboard players set @s am_gametimer 619