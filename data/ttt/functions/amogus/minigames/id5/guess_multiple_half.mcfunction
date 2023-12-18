execute as @r[tag=amplayer] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
tellraw @a [{"text":"Correct answer...\n","color":"green","bold":"true"},{"text":"But this question has more than one answer!\nUse the same command again to provide it.","bold":"false"}]
execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run scoreboard players set @s am_gamescore7 2
execute if score @s am_gamescore3 = @r[tag=amplayer] Baldi_Answer run scoreboard players set @s am_gamescore7 3

scoreboard players reset @a Baldi_Answer
scoreboard players set @a[tag=amplayer] Baldi_Answer -32787
scoreboard players enable @a[tag=amplayer] Baldi_Answer