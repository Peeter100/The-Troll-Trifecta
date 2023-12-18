scoreboard players set @s deathreason 47
execute as @e[tag=shadowbody] at @s anchored eyes positioned ^-0.4 ^-0.25 ^1 run particle smoke ~ 30.6 ~ .2 .2 .2 0.1 50 force @a
playsound custom.act3.pistol_shoot master @a ~ ~ ~ 1000
kill @s