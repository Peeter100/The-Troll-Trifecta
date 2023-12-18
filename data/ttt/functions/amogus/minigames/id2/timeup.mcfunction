scoreboard players set @s deathreason 46
#tag @e[type=marker,tag=sv] add silentdeath
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
particle cloud ~ ~1 ~ .2 .2 .2 0.5 100 force @a
particle dust 1 0 0 2 ~ ~1 ~ .4 .4 .4 0 100 force @a
kill @s