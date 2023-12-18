tag @e[tag=sv] add silentdeath
playsound custom.act1.mario.die2 master @a ~ ~ ~
clear @s carrot_on_a_stick{poisonshroom:1b}
scoreboard players set @s deathreason 36
scoreboard players set @s rc 0
kill @s