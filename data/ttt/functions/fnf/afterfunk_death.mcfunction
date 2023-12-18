kill @e[tag=forkill]
tag @s add silentdeath
execute at @p[tag=fnfplayer] run playsound custom.act1.mario.die2 master @a ~ ~ ~ 1000
scoreboard players set @p[tag=fnfplayer] deathreason 14
execute as @p[tag=fnfplayer] at @s run function ttt:death
scoreboard players set @s actpart 3