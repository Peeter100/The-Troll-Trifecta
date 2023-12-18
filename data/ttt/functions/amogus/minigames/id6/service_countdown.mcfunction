scoreboard players operation @s am_gamescore3 = @s am_gamescore2
scoreboard players operation @s am_gamescore3 /= @s am_secondworth
scoreboard players add @s am_gamescore3 1
execute unless score @s am_gamescore4 = @s am_gamescore3 run title @a title {"text":""}
execute unless score @s am_gamescore4 = @s am_gamescore3 run title @a subtitle [{"score":{"name":"@s","objective":"am_gamescore3"},"color":"yellow"},{"text":"s"}]
execute unless score @s am_gamescore4 = @s am_gamescore3 at @r[tag=amplayer] run playsound block.note_block.hat master @a ~ ~ ~ 1000
scoreboard players operation @s am_gamescore4 = @s am_gamescore3