particle angry_villager ~ ~1 ~ 1 1 1 0 50 normal @a
tellraw @a {"text":"Wrong answer!","color":"red","bold":true}
execute as @r[tag=amplayer] at @s run playsound custom.act3.king.mad master @a ~ ~ ~ 1000
scoreboard players set @s am_gamescore7 0
scoreboard players set @s am_gametimer 1000

scoreboard players reset @a Baldi_Answer
scoreboard players set @a[tag=amplayer] Baldi_Answer -32787

execute if score @s am_gamescore1 matches 15 run advancement grant @a only ttt:math
execute if score @s am_gamescore1 matches 15 run schedule function ttt:amogus/minigames/id5/advancement_tip 60t replace