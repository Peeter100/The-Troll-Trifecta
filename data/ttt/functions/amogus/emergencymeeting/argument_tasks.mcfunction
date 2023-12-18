scoreboard players set @s acttimer 3010
scoreboard players set @s dialoguetime 310

execute at @r[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> ","color":"white"},{"text":"Red isn't doing their tasks!","color":"yellow"}]