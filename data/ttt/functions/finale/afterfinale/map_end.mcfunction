execute at @r run playsound entity.player.levelup master @a ~ ~ ~ 10000
tellraw @a [{"text":"You've unlocked ","color":"red"},{"text":"Extras","color":"yellow"},{"text":" and the "},{"text":"Trivia Book","color":"yellow"},{"text":"!"}]
scoreboard players set @s actunlocked 4
scoreboard players set @a death 0
scoreboard players set @a y 30
function ttt:map_reset
function ttt:map_stop