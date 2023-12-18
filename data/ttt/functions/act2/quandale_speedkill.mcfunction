playsound custom.act2.thud master @a ~ ~ ~ 1000
playsound custom.act2.squidgame master @a ~ ~ ~ 1000
particle poof ~ ~1 ~ 0 0 0 .3 300 force @a

tag @e[type=marker,tag=sv] add silentdeath
scoreboard players set @s deathreason 0
kill @s