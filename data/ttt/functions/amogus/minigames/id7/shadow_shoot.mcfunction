scoreboard players set @p[tag=amplayer] deathreason 47
#tag @e[tag=sv] add silentdeath
execute as @e[tag=shadowbody] at @s anchored eyes positioned ^-0.4 ^-0.25 ^1 run particle smoke ~ 35.6 ~ .2 .2 .2 0.1 50 force @a
execute as @e[tag=shadowbody] at @s run playsound custom.act3.pistol_shoot master @a ~ ~ ~ 1000
kill @p[tag=amplayer]