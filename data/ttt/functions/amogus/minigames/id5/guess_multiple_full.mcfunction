execute as @r[tag=amplayer] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
tellraw @a {"text":"You provided all of the answers!","color":"green","bold":"true"}
execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
scoreboard players set @s am_gamescore7 -1
scoreboard players add @s am_gamescore1 1
scoreboard players set @s am_gametimer 380

scoreboard players reset @a Baldi_Answer
scoreboard players set @a[tag=amplayer] Baldi_Answer -32787