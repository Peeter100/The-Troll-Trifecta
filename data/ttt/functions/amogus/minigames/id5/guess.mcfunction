execute if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run execute as @r[tag=amplayer] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
execute if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run tellraw @a {"text":"Correct answer!","color":"green","bold":"true"}
execute if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run scoreboard players add @s am_gamescore1 1
execute if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run scoreboard players set @s am_gametimer 205

execute unless score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_wrong

scoreboard players reset @a Baldi_Answer
scoreboard players set @a[tag=amplayer] Baldi_Answer -32787